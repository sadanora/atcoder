"""Repository-local AtCoder workspace commands (Python standard library only)."""

import argparse
import contextlib
import fcntl
import getpass
import http.cookiejar
from html.parser import HTMLParser
import json
import os
from pathlib import Path
import re
import shlex
import shutil
import subprocess
import sys
import tempfile
import tomllib
import urllib.error
import urllib.parse
import urllib.request
import warnings
import webbrowser

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = "contest.acc.json"
ORIGIN = "https://atcoder.jp"


class UserError(Exception):
    pass


def confined(base, value):
    """Resolve manifest/config paths without allowing writes outside the base."""
    if not isinstance(value, str) or not value or Path(value).is_absolute():
        raise UserError("A relative path is required.")
    path = (base / value).resolve()
    if not path.is_relative_to(base.resolve()) or path == base.resolve():
        raise UserError(f"Path points outside the directory: {value}")
    return path


def config():
    with (ROOT / "atcoder.toml").open("rb") as f:
        languages = tomllib.load(f)["languages"]
    for name, spec in languages.items():
        confined(ROOT, spec["template"])
        confined(ROOT, spec["submit"])
        cmd = spec["command"]
        if not isinstance(cmd, list) or not cmd or not all(isinstance(s, str) for s in cmd):
            raise UserError(f"{name}: command must be an array of strings.")
        if not any("{file}" in s for s in cmd):
            raise UserError(f"{name}: command must contain {{file}}.")
    return languages


def atomic_json(path, value):
    fd, tmp = tempfile.mkstemp(prefix=".acc-", dir=path.parent)
    try:
        with os.fdopen(fd, "w", encoding="utf-8") as f:
            json.dump(value, f, ensure_ascii=False, indent=2)
            f.write("\n")
        os.replace(tmp, path)
    finally:
        Path(tmp).unlink(missing_ok=True)


@contextlib.contextmanager
def workspace_lock(base):
    with (base / ".acc.lock").open("a") as f:
        try:
            fcntl.flock(f, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError:
            raise UserError("Another acc process is running in this contest directory.") from None
        yield


def validate_url(url, contest_id=None):
    parsed = urllib.parse.urlsplit(url)
    if parsed.scheme != "https" or parsed.netloc != "atcoder.jp" or parsed.query or parsed.fragment:
        raise UserError("An AtCoder HTTPS URL is required.")
    if contest_id and not re.fullmatch(r"/contests/" + re.escape(contest_id) + r"/tasks/[\w-]+", parsed.path):
        raise UserError("The task URL does not match the contest.")
    return url


def read_manifest(path):
    data = json.loads(path.read_text(encoding="utf-8"))
    try:
        contest_id = data["contest"]["id"]
        if not isinstance(contest_id, str) or not re.fullmatch(r"[\w-]+", contest_id):
            raise ValueError
        if not isinstance(data["tasks"], list):
            raise ValueError
        ids, labels, directories = set(), set(), set()
        for task in data["tasks"]:
            key, label = task["id"], task["label"].lower()
            if not isinstance(key, str) or key in ids or label in labels:
                raise ValueError
            ids.add(key)
            labels.add(label)
            validate_url(task["url"], contest_id)
            if "directory" in task:
                directory = task["directory"]
                folder = confined(path.parent, directory["path"])
                if folder in directories:
                    raise ValueError
                directories.add(folder)
                confined(folder, directory["testdir"])
                if "submit" in directory:
                    confined(folder, directory["submit"])
    except (KeyError, TypeError, AttributeError, ValueError):
        raise UserError(f"Invalid contest configuration: {path}") from None
    return data


def find_manifest(cwd):
    for base in (cwd, *cwd.parents):
        path = base / MANIFEST
        if path.is_file():
            return path
    return None


class TasksParser(HTMLParser):
    def __init__(self, contest_id):
        super().__init__(convert_charrefs=True)
        self.contest_id = contest_id
        self.title = []
        self.in_title = False
        self.row = None
        self.cell = None
        self.tasks = []

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if tag == "title":
            self.in_title = True
        elif tag == "tr":
            self.row = []
        elif tag == "td" and self.row is not None:
            self.cell = {"text": [], "links": []}
        elif tag == "a" and self.cell is not None:
            self.cell["links"].append(attrs.get("href", ""))

    def handle_data(self, text):
        if self.in_title:
            self.title.append(text)
        if self.cell is not None:
            self.cell["text"].append(text)

    def handle_endtag(self, tag):
        if tag == "title":
            self.in_title = False
        elif tag == "td" and self.cell is not None:
            self.row.append(self.cell)
            self.cell = None
        elif tag == "tr" and self.row is not None:
            if len(self.row) >= 2:
                first, second = self.row[:2]
                pattern = r"/contests/" + re.escape(self.contest_id) + r"/tasks/([\w-]+)"
                links = [s for s in second["links"] if re.fullmatch(pattern, s)]
                if links:
                    self.tasks.append({
                        "id": links[0].rsplit("/", 1)[1],
                        "label": "".join(first["text"]).strip(),
                        "title": "".join(second["text"]).strip(),
                        "url": ORIGIN + links[0],
                    })
            self.row = None


def parse_tasks(html, contest_id):
    parser = TasksParser(contest_id)
    parser.feed(html)
    tasks = parser.tasks
    labels = [t["label"].lower() for t in tasks]
    if (not tasks or len(set(labels)) != len(labels)
            or len({t["id"] for t in tasks}) != len(tasks)
            or any(not re.fullmatch(r"[a-z0-9][a-z0-9_-]*", s) for s in labels)):
        raise UserError("Could not parse the task list. Check contest availability, login status, and page format.")
    title = "".join(parser.title).strip()
    for prefix in ("Tasks - ", "問題 - "):
        if title.startswith(prefix):
            title = title[len(prefix):]
    return {"contest": {"id": contest_id, "title": title or contest_id,
                        "url": f"{ORIGIN}/contests/{contest_id}"}, "tasks": tasks}


def cookie_path():
    if os.environ.get("ACC_COOKIE_PATH"):
        return Path(os.environ["ACC_COOKIE_PATH"]).expanduser().resolve()
    return Path(os.environ.get("XDG_DATA_HOME", str(Path.home() / ".local/share"))) / "online-judge-tools/cookie.jar"


def load_cookies(path):
    jar = http.cookiejar.LWPCookieJar(str(path))
    if path.exists():
        try:
            jar.load(ignore_discard=True)
        except http.cookiejar.LoadError:
            raise UserError("Could not read the cookie file. Set ACC_COOKIE_PATH to use a different file.") from None
    return jar


def save_cookies(jar, path):
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, tmp = tempfile.mkstemp(prefix=".acc-cookie-", dir=path.parent)
    os.close(fd)
    try:
        jar.save(tmp, ignore_discard=True)
        os.chmod(tmp, 0o600)
        os.replace(tmp, path)
    finally:
        Path(tmp).unlink(missing_ok=True)


class AtCoderRedirect(urllib.request.HTTPRedirectHandler):
    def redirect_request(self, req, fp, code, msg, headers, newurl):
        if urllib.parse.urlsplit(newurl).netloc != "atcoder.jp" or not newurl.startswith(ORIGIN + "/"):
            raise UserError("Refused a redirect outside AtCoder.")
        return super().redirect_request(req, fp, code, msg, headers, newurl)


def fetch(url, jar):
    validate_url(url.split("?", 1)[0])
    opener = urllib.request.build_opener(urllib.request.HTTPCookieProcessor(jar), AtCoderRedirect())
    request = urllib.request.Request(url, headers={"User-Agent": "atcoder-workspace/1.0"})
    try:
        with opener.open(request, timeout=30) as response:
            return response.geturl(), response.read().decode("utf-8")
    except urllib.error.HTTPError as e:
        messages = {403: "Access denied (403). Check page availability and login status in your browser.",
                    404: "Page not found or not yet published (404).",
                    429: "Rate limited (429). Please try again later."}
        raise UserError(messages.get(e.code, f"AtCoder returned HTTP {e.code}.")) from None
    except (urllib.error.URLError, TimeoutError):
        raise UserError("Could not connect. Check your network connection (authentication status unknown).") from None


class SessionParser(HTMLParser):
    def __init__(self):
        super().__init__()
        self.logged_in = False

    def handle_starttag(self, tag, attrs):
        attrs = dict(attrs)
        if tag == "form":
            action = urllib.parse.urlsplit(attrs.get("action", ""))
            if action.path == "/logout" and action.netloc in ("", "atcoder.jp"):
                self.logged_in = True


def check_session(jar):
    url, html = fetch(ORIGIN + "/settings", jar)
    if urllib.parse.urlsplit(url).path == "/login":
        return False
    parser = SessionParser()
    parser.feed(html)
    if parser.logged_in:
        return True
    raise UserError("Could not determine authentication status. The page format may have changed.")


def login(args):
    if not args.no_browser:
        webbrowser.open(ORIGIN + "/login")
    print("Log in at https://atcoder.jp/login in your browser, then copy the REVEL_SESSION value from developer tools.")
    with warnings.catch_warnings():
        warnings.simplefilter("error", getpass.GetPassWarning)
        try:
            value = getpass.getpass("REVEL_SESSION (hidden input): ").strip()
        except getpass.GetPassWarning:
            raise UserError("Run acc login in a terminal that supports hidden input.") from None
    if not value or any(ord(c) < 33 or ord(c) > 126 or c == ";" for c in value):
        raise UserError("Enter only the cookie value.")
    path = cookie_path()
    jar = load_cookies(path)
    for cookie in list(jar):
        if cookie.name == "REVEL_SESSION" and cookie.domain.lstrip(".") == "atcoder.jp":
            jar.clear(cookie.domain, cookie.path, cookie.name)
    jar.set_cookie(http.cookiejar.Cookie(0, "REVEL_SESSION", value, None, False,
                                        "atcoder.jp", False, False, "/", True,
                                        True, None, True, None, None, {"HttpOnly": None}))
    if not check_session(jar):
        raise UserError("The session is invalid or expired. Nothing was saved.")
    save_cookies(jar, path)
    print("Login verified. Session saved.")
    return 0


def session(_args):
    path = cookie_path()
    jar = load_cookies(path)
    if not any(c.name == "REVEL_SESSION" and c.domain.lstrip(".") == "atcoder.jp" for c in jar):
        print("No saved session, or the session has expired. Run acc login.")
        return 1
    if not check_session(jar):
        print("The session is invalid or expired. Run acc login.")
        return 1
    save_cookies(jar, path)
    print("Logged in.")
    return 0


def language_for(cwd, explicit, languages, data=None):
    if explicit:
        if explicit not in languages:
            raise UserError(f"Unsupported language: {explicit}")
        return explicit
    for parent in (cwd, *cwd.parents):
        if parent.name in languages:
            return parent.name
    if data:
        names = {name for task in data["tasks"] for name, spec in languages.items()
                 if task.get("directory", {}).get("submit") == spec["submit"]}
        if len(names) == 1:
            return names.pop()
    raise UserError("Could not determine the language. Specify --lang ruby or --lang haskell.")


def select_tasks(data, args):
    tasks = data["tasks"]
    available = [t for t in tasks if "directory" not in t]
    if args.tasks:
        wanted = {s.lower() for s in args.tasks}
        unknown = wanted - {t["label"].lower() for t in tasks}
        if unknown:
            raise UserError("Unknown tasks: " + " ".join(sorted(unknown)))
        return [t for t in available if t["label"].lower() in wanted]
    if args.all:
        return available
    if not available:
        return []
    if not sys.stdin.isatty():
        raise UserError("Interactive input is unavailable. Specify --tasks a b or --all.")
    print(data["contest"]["title"])
    for task in available:
        print(f"  {task['label'].lower()}  {task['title']}")
    value = input("Tasks to download (e.g. a b / all; leave blank to cancel): ").strip()
    if not value:
        return []
    args.all = value == "all"
    args.tasks = None if args.all else value.split()
    return select_tasks(data, args)


def oj_executable():
    path = ROOT / ".venv/bin/oj"
    if not path.is_file():
        raise UserError("oj is not installed. Follow the setup instructions in README.")
    return str(path)


def download_samples(url, directory):
    path = cookie_path()
    # Initialize a private file before oj writes into it.
    if not path.exists():
        save_cookies(load_cookies(path), path)
    try:
        result = subprocess.run([oj_executable(), "--cookie", str(path), "download", url,
                                 "--directory", str(directory), "--format", "sample-%i.%e"],
                                timeout=120)
    except subprocess.TimeoutExpired:
        raise UserError("Sample download timed out. Retry with acc add.") from None
    if result.returncode:
        raise UserError("Sample download failed. Check page availability and acc session, then retry with acc add.")
    inputs = {p.stem for p in directory.glob("*.in")}
    outputs = {p.stem for p in directory.glob("*.out")}
    if not inputs or inputs != outputs:
        raise UserError("Sample inputs and outputs are missing or incomplete. The task was not marked as downloaded.")


def provision(base, data, selected, spec):
    template = confined(ROOT, spec["template"]).read_bytes()
    for task in selected:
        folder = confined(base, task["label"].lower())
        source = confined(folder, spec["submit"])
        tests = confined(folder, "test")
        with tempfile.TemporaryDirectory(prefix=".acc-download-", dir=base) as tmp:
            staged = Path(tmp) / "test"
            download_samples(task["url"], staged)
            # Check all conflicts before copying; never overwrite existing samples.
            samples = sorted(staged.iterdir())
            for sample in samples:
                target = confined(tests, sample.name)
                if target.exists() and (not target.is_file() or target.read_bytes() != sample.read_bytes()):
                    raise UserError(f"Sample content differs. Kept the existing file: {target}")
            source.parent.mkdir(parents=True, exist_ok=True)
            if not source.exists():
                with source.open("xb") as f:
                    f.write(template)
            elif not source.is_file():
                raise UserError(f"The solution path is not a file: {source}")
            tests.mkdir(parents=True, exist_ok=True)
            for sample in samples:
                target = tests / sample.name
                if not target.exists():
                    with target.open("xb") as f:
                        f.write(sample.read_bytes())
        task["directory"] = {"path": task["label"].lower(), "testdir": "test", "submit": spec["submit"]}
        atomic_json(base / MANIFEST, data)
        print(f"Downloaded: {folder} ({len(samples) // 2} samples)", flush=True)


def new(args):
    if not re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9_-]*", args.contest):
        raise UserError("Specify a contest ID (e.g. abc100).")
    languages = config()
    cwd = Path.cwd()
    name = language_for(cwd, args.lang, languages)
    base = confined(cwd, args.contest)
    if base.exists():
        raise UserError(f"Already exists: {base}. Run acc add inside it to continue.")
    jar = load_cookies(cookie_path())
    url, html = fetch(f"{ORIGIN}/contests/{args.contest}/tasks?lang=ja", jar)
    if urllib.parse.urlsplit(url).path == "/login":
        raise UserError("Login required. Run acc login.")
    data = parse_tasks(html, args.contest)
    selected = select_tasks(data, args)
    if not selected:
        print("Creation cancelled.")
        return 0
    oj_executable()
    save_cookies(jar, cookie_path())
    base.mkdir()
    with workspace_lock(base):
        atomic_json(base / MANIFEST, data)
        provision(base, data, selected, languages[name])
    return 0


def add(args):
    path = find_manifest(Path.cwd())
    if path is None:
        raise UserError("contest.acc.json not found. Run this command inside a contest directory.")
    with workspace_lock(path.parent):
        data = read_manifest(path)
        selected = select_tasks(data, args)
        if not selected:
            print("No tasks to add. Existing files were kept.")
            return 0
        languages = config()
        name = language_for(path.parent, args.lang, languages, data)
        provision(path.parent, data, selected, languages[name])
    return 0


def test_command(args, extra):
    cwd = Path.cwd()
    languages = config()
    path = find_manifest(cwd)
    task = None
    if path:
        data = read_manifest(path)
        task = next((t for t in data["tasks"] if "directory" in t
                     and confined(path.parent, t["directory"]["path"]) == cwd), None)
    filename = args.file or (task or {}).get("directory", {}).get("submit")
    if not filename:
        candidates = [spec["submit"] for spec in languages.values() if (cwd / spec["submit"]).is_file()]
        if len(candidates) != 1:
            raise UserError("Could not identify the solution file. Specify --file.")
        filename = candidates[0]
    source = confined(cwd, filename)
    if not source.is_file():
        raise UserError(f"Solution file not found: {filename}")
    names = [name for name, spec in languages.items() if Path(spec["submit"]).suffix == source.suffix]
    if len(names) != 1:
        raise UserError(f"Could not determine the language: {filename}")
    command = [s.replace("{file}", str(source)) for s in languages[names[0]]["command"]]
    if shutil.which(command[0]) is None:
        raise UserError(f"Runtime not found: {command[0]}")
    testdir = (task or {}).get("directory", {}).get("testdir")
    if testdir is None:
        candidates = [d for d in ("test", "tests") if (cwd / d).is_dir()]
        if len(candidates) != 1:
            raise UserError("Could not identify the test directory. Create test/.")
        testdir = candidates[0]
    directory = confined(cwd, testdir)
    if not directory.is_dir():
        raise UserError(f"Test directory not found: {testdir}")
    oj = oj_executable()
    return [oj, "test", "--command", shlex.join(command), "--directory", str(directory), *extra]


def parser():
    cli = argparse.ArgumentParser(description="AtCoder workspace commands for this repository")
    commands = cli.add_subparsers(dest="action", required=True)
    p = commands.add_parser("login", help="Import a browser session cookie")
    p.add_argument("--no-browser", action="store_true", help="Do not open the browser")
    p.set_defaults(run=login)
    commands.add_parser("session", help="Check login status").set_defaults(run=session)
    for name, fn in (("new", new), ("add", add)):
        p = commands.add_parser(name)
        if name == "new":
            p.add_argument("contest")
        group = p.add_mutually_exclusive_group()
        group.add_argument("--tasks", nargs="+", metavar="LABEL")
        group.add_argument("--all", action="store_true")
        p.add_argument("--lang", metavar="LANGUAGE")
        p.set_defaults(run=fn)
    p = commands.add_parser("test", help="Run tests (same as ojt)", epilog="Pass oj options after --.")
    p.add_argument("--file")
    return cli


def main(argv=None):
    argv = list(sys.argv[1:] if argv is None else argv)
    extra = []
    if argv[:1] == ["test"] and "--" in argv:
        index = argv.index("--")
        argv, extra = argv[:index], argv[index + 1:]
    args = parser().parse_args(argv)
    try:
        if args.action == "test":
            cmd = test_command(args, extra)
            # Replace ourselves: oj owns output, exit status and terminal signals.
            os.execv(cmd[0], cmd)
        return args.run(args)
    except (UserError, OSError, ValueError, KeyError, TypeError) as e:
        print(f"Error: {e}", file=sys.stderr)
        return 2
    except (KeyboardInterrupt, EOFError):
        print("\nCancelled.", file=sys.stderr)
        return 130


if __name__ == "__main__":
    sys.exit(main())

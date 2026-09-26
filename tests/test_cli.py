import contextlib
import io
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import time
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "tools"))
import atcoder_cli as cli


class SmokeTests(unittest.TestCase):
    def setUp(self):
        self.base = Path(self.enterContext(tempfile.TemporaryDirectory()))
        self.enterContext(contextlib.chdir(self.base))
        self.enterContext(patch.dict(os.environ, {"ACC_COOKIE_PATH": str(self.base / "cookies")}))
        self.enterContext(contextlib.redirect_stdout(io.StringIO()))

    def mock_downloads(self):
        def download(_url, directory):
            directory.mkdir()
            (directory / "sample-1.in").write_text("1 2\n")
            (directory / "sample-1.out").write_text("3\n")

        self.enterContext(patch.object(cli, "oj_executable", return_value="/not-executed/oj"))
        return self.enterContext(patch.object(cli, "download_samples", side_effect=download))

    def test_new_downloads_only_selected_tasks(self):
        html = (ROOT / "tests/fixtures/tasks.html").read_text()
        downloads = self.mock_downloads()
        with patch.object(cli, "fetch", return_value=(cli.ORIGIN + "/contests/abc100/tasks", html)):
            self.assertEqual(cli.main(["new", "abc100", "--lang", "ruby", "--tasks", "a"]), 0)
        base = self.base / "abc100"
        self.assertTrue((base / "a/main.rb").is_file())
        self.assertFalse((base / "b").exists())
        self.assertEqual([call.args[0] for call in downloads.call_args_list],
                         [cli.ORIGIN + "/contests/abc100/tasks/abc100_a"])

    def test_add_downloads_task_and_preserves_existing_solution(self):
        html = (ROOT / "tests/fixtures/tasks.html").read_text()
        data = cli.parse_tasks(html, "abc100")
        data["tasks"][0]["directory"] = {"path": "a", "testdir": "test", "submit": "main.rb"}
        (self.base / cli.MANIFEST).write_text(json.dumps(data))
        (self.base / "a").mkdir()
        source = self.base / "a/main.rb"
        source.write_text("puts 'my work'\n")
        downloads = self.mock_downloads()

        with contextlib.chdir(self.base / "a"):
            self.assertEqual(cli.main(["add", "--tasks", "b"]), 0)
        self.assertEqual([call.args[0] for call in downloads.call_args_list],
                         [cli.ORIGIN + "/contests/abc100/tasks/old_problem_id"])
        self.assertEqual(source.read_text(), "puts 'my work'\n")
        self.assertTrue((self.base / "b/main.rb").is_file())
        self.assertEqual((self.base / "b/test/sample-1.out").read_text(), "3\n")
        data = cli.read_manifest(self.base / cli.MANIFEST)
        self.assertEqual(data["tasks"][1]["id"], "old_problem_id")
        self.assertEqual(data["tasks"][1]["directory"]["path"], "b")

    def test_login_saves_verified_cookie(self):
        with patch.object(cli.getpass, "getpass", return_value="dummy-test-cookie"), \
                patch.object(cli, "fetch", return_value=(cli.ORIGIN + "/settings", '<form action="/logout"></form>')):
            self.assertEqual(cli.main(["login", "--no-browser"]), 0)
        self.assertEqual(next(iter(cli.load_cookies(cli.cookie_path()))).value, "dummy-test-cookie")

    def test_session_reports_login_status(self):
        self.assertEqual(cli.main(["session"]), 1)
        cli.cookie_path().write_text(
            '#LWP-Cookies-2.0\n'
            'Set-Cookie3: REVEL_SESSION=dummy-test-cookie; path="/"; domain=atcoder.jp; '
            'path_spec; secure; discard; version=0\n'
        )
        with patch.object(cli, "fetch", return_value=(cli.ORIGIN + "/settings", '<form action="/logout"></form>')):
            self.assertEqual(cli.main(["session"]), 0)
        with patch.object(cli, "fetch", return_value=(cli.ORIGIN + "/login", "")):
            self.assertEqual(cli.main(["session"]), 1)

    @unittest.skipUnless((ROOT / ".venv/bin/oj").exists() and shutil.which("ruby"), "Run setup and install Ruby")
    def test_ojt_pass_and_fail(self):
        (self.base / "test").mkdir()
        (self.base / "test/sample-1.in").write_text("1 2\n")
        (self.base / "test/sample-1.out").write_text("3\n")
        # Keep oj's startup update check offline, using a temporary cache.
        cache = self.base / "cache/online-judge-tools"
        cache.mkdir(parents=True)
        (cache / "pypi.json").write_text(json.dumps({
            name: {"time": time.time(), "version": version} for name, version in
            (("online-judge-tools", "11.5.1"), ("online-judge-api-client", "10.10.1"))
        }))
        env = {**os.environ, "XDG_CACHE_HOME": str(self.base / "cache"),
               "XDG_DATA_HOME": str(self.base / "data")}
        for program, status, marker in (("puts gets.split.map(&:to_i).sum", 0, "AC"),
                                         ("puts 999", 1, "WA")):
            with self.subTest(result=marker):
                (self.base / "main.rb").write_text(program)
                result = subprocess.run([str(ROOT / "bin/ojt")], env=env,
                                        capture_output=True, text=True, timeout=20)
                self.assertEqual(result.returncode, status, result.stdout + result.stderr)
                self.assertIn(marker, result.stdout)


if __name__ == "__main__":
    unittest.main()

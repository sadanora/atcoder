## Setup

Run from the repository root with `mise activate` configured in your shell.
Install language runtimes such as Ruby or Haskell separately.

```bash
mise trust
mise install
mise run setup
```

## Download problems

```bash
cd ruby/ABC
acc new abc100               # Select tasks interactively
acc new abc100 --tasks a b   # Download specific tasks
acc new abc100 --all         # Download all tasks

cd abc100/a
acc add                      # Select remaining tasks interactively
acc add --tasks c d          # Download specific remaining tasks
acc add --all                # Download all remaining tasks
```

## Test solutions

Run from a problem directory. Options after `--` are passed to `oj test`.

```bash
ojt                          # Test main.rb or main.hs
ojt --file main2.rb          # Test a specific file
ojt -- -t 5                  # Set a 5-second time limit
ojt -- -e 1e-6               # Set the error tolerance
```

## Authentication

```bash
acc login                   # Import a session cookie
acc session                 # Check login status
```

When a login session is required, run `acc login`, sign in through the browser,
copy the `REVEL_SESSION` cookie value from the browser's developer tools,
and paste it into the terminal.

## Configuration and checks

- Per-language execution settings: `atcoder.toml`
- Per-language templates: `templates/`
- CLI tests: `mise run check` (run from the repository root)

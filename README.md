# python-template

Python monorepo template with the [Astral](https://astral.sh/) toolchain.

## Stack

- **[uv](https://docs.astral.sh/uv/)** — package manager, workspaces, Python version management
- **[ruff](https://docs.astral.sh/ruff/)** — linter and formatter
- **[ty](https://docs.astral.sh/ty/)** — type checker
- **[pytest](https://docs.pytest.org/)** — test runner
- **[lefthook](https://github.com/evilmartians/lefthook)** — git hooks
- **[Nix flakes](https://nixos.wiki/wiki/Flakes)** — reproducible dev environment

## Usage

### From GitHub template

Click **"Use this template"** on GitHub, then:

```bash
git clone <your-new-repo>
cd <your-new-repo>
nix develop          # or install uv, ruff, ty, lefthook manually
uv run python scripts/setup.py
uv sync
```

### With gh CLI

```bash
gh repo create my-project --template 0xbigboss/python-template --public --clone
cd my-project
nix develop
uv run python scripts/setup.py
uv sync
```

See [SETUP.md](SETUP.md) for details.

## Development

```bash
nix develop                      # enter dev shell
uv sync                          # install dependencies
uv run pytest                    # run tests
uv run ruff check .              # lint
uv run ruff format .             # format
uv run ty check                  # type check
uv run example                   # run example app
```

## Structure

```
apps/           # applications
  example/      # example app
packages/       # shared libraries
  core/         # core library
  utils/        # utility library
```

## License

MIT

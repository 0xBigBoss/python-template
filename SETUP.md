# Template Setup

After creating a repo from this template:

## 1. Run the setup script

```bash
uv run python scripts/setup.py
```

This will prompt for your project name and replace all `template` references.

## 2. What gets renamed

- Root `pyproject.toml`: project name
- `packages/core/pyproject.toml`: package name
- `packages/utils/pyproject.toml`: package name and dependency references
- `apps/example/pyproject.toml`: app name and dependency references
- Source directories: `src/core/` → `src/<your-core-name>/`
- Import statements across all `.py` files
- `CLAUDE.md`: project references

## 3. After setup

```bash
uv sync          # reinstall with new names
uv run pytest    # verify everything works
```

## 4. Clean up

Delete this file (`SETUP.md`) — it's only needed once.

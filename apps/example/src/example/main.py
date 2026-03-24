"""Example application entry point."""

from utils import get_version


def main() -> None:
    print(f"version: {get_version()}")


if __name__ == "__main__":
    main()

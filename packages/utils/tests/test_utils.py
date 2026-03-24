from utils import get_version


def test_get_version() -> None:
    version = get_version()
    assert isinstance(version, str)
    assert version == "0.0.0"

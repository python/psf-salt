import subprocess


def dc():
    """
    This is a really rough check, however I  think it'll work OK and I can't
    seem to locate anything better right now.
    """
    try:
        subprocess.check_output(["id", "vagrant"])
    except Exception:
        return {}

    return {"dc": "vagrant"}

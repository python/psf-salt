import pathlib
import subprocess


def ext_pillar(minion_id, pillar, base_path="/etc/backup_keys/"):
    base_path = pathlib.Path(base_path)
    base_path.mkdir(parents=True, exist_ok=True)

    is_server = pillar.get("backup", {}).get("server", False)

    user_list = set()
    for directory, directory_config in (
        pillar.get("backup", {}).get("directories", {}).items()
    ):
        user_list.add(directory_config.get("target_user"))

    user_keys = {}

    for user in user_list:
        user_private_key_path = base_path / f"{user}"
        user_public_key_path = base_path / f"{user}.pub"

        if not user_private_key_path.exists():
            subprocess.run(
                [
                    "ssh-keygen",
                    "-t",
                    "ed25519",
                    "-C",
                    f"{user}@backup",
                    "-f",
                    user_private_key_path,
                ]
            )
        if not user_public_key_path.exists():
            with open(user_public_key_path, "w") as out_file:
                subprocess.run(
                    ["ssh-keygen", "-y", "-f", user_private_key_path], stdout=out_file
                )

        key_data = {"public": user_public_key_path.read_text()}
        if not is_server:
            key_data["private"] = user_private_key_path.read_text()

        user_keys[user] = key_data

    if is_server:
        pillar["backup_directories"] = pillar.get("backup", {}).pop("directories")

    return {"backup_keys": user_keys}

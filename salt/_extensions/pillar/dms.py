import pathlib

try:
    import requests
    from requests.auth import HTTPBasicAuth

    HAS_REQUESTS = True
except ImportError:
    HAS_REQUESTS = False


def ext_pillar(minion_id, pillar, api_key=None, base_path="/etc/deadmanssnitch/"):
    base_path = pathlib.Path(base_path)
    # Ensure base path exists
    base_path.mkdir(parents=True, exist_ok=True)

    minion_path = base_path / minion_id

    if minion_path.exists():
        token = minion_path.read_text()
        if token:
            return {"deadmanssnitch": {"token": token}}

    snitches = requests.get(
        "https://api.deadmanssnitch.com/v1/snitches",
        params={"tags": "salt-master"},
        auth=HTTPBasicAuth(api_key, ""),
    )

    for snitch in snitches.json():
        if snitch["name"] == f"salt-highstate {minion_id}":
            token = snitch["token"]
            minion_path.write_text(token)
            return {"deadmanssnitch": {"token": token}}

    snitch = requests.post(
        "https://api.deadmanssnitch.com/v1/snitches",
        auth=HTTPBasicAuth(api_key, ""),
        json={
            "name": f"salt-highstate {minion_id}",
            "interval": "15_minute",
            "alert_type": "basic",
            "tags": ["salt-master"],
        },
    )
    token = snitch.json()["token"]
    minion_path.write_text(token)
    return {"deadmanssnitch": {"token": token}}

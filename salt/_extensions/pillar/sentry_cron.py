"""Salt extenstion to replace dms.py (Dead Man's Snitch) by using Sentry's cron monitors.

It grabs the pillar secrets bearer token and upserts a new monitor for the minion it runs on
and stores the monitor ID in a file in /etc/sentry-cron/.

Note: The bearer token will need the `alerts:read, alerts:write, project:read` scopes.

The schedule is every 15 minutes to match our highstate check interval.

You can get pillar data via:
    sudo salt-call -l debug pillar.get sentry_cron

View print output via:
    sudo journalctl -u salt-master
"""

import contextlib
import pathlib
import json
import os
import tempfile
import fcntl

with contextlib.suppress(ImportError):
    import requests

def ext_pillar(minion_id: str, pillar: dict, base_path: str = "/etc/sentry-cron/") -> dict:
    """Upsert a new cron monitor for a minion.
    
    Will print log to stderr (sudo journalctl -u salt-master)

    Args:
        minion_id: The minion ID (provided by salt)
        pillar: The pillar data for the minion (provided by salt)
        base_path: Where the monitor ID is stored for a minion

    Returns:
        dict: The pillar data for the minion, if any.
    """
    if not (sentry_token := pillar.get("secrets", {}).get("sentry", {}).get("token")):
        print("No Sentry token provided")
        return {}

    org_slug = pillar.get("sentry", {}).get("org_slug")
    project_slug = pillar.get("sentry", {}).get("project_slug")
    if not org_slug or not project_slug:
        print("Missing org_slug or project_slug in pillar data")
        return {}

    base_path = pathlib.Path(base_path)
    base_path.mkdir(parents=True, exist_ok=True)
    minion_path = base_path / minion_id
    lock_path = base_path / f"{minion_id}.lock"

    with open(lock_path, "w") as lockfile:
        fcntl.flock(lockfile, fcntl.LOCK_EX)
        if minion_path.exists():
            if monitor_id := minion_path.read_text():
                print(f"Found existing monitor ID (locked): {monitor_id}")
                return {"sentry_cron": {"monitor_id": monitor_id}}

        headers = {
            "Authorization": f"Bearer {sentry_token}",
            "Content-Type": "application/json",
        }

        request_data = {
            "name": f"salt-highstate {minion_id}",
            "type": "cron_job",
            "config": {
                "schedule": {
                    "type": "crontab",
                    "value": "*/15 * * * *",
                },
                "checkin_margin": 5,
                "max_runtime": 30,
                "timezone": "UTC",
            },
            "project": project_slug,
            "status": "active",
        }

        try:
            url = f"https://sentry.io/api/0/organizations/{org_slug}/monitors/"
            monitor = requests.post(
                url,
                headers=headers,
                json=request_data,
                timeout=10,
            )

            if monitor.status_code != 201:
                print(f"Error response from Sentry API: {monitor.text}")
                try:
                    error_data = monitor.json()
                    print(f"Error details: {json.dumps(error_data, indent=2)}")
                except Exception as e:
                    print(f"Could not parse error response as JSON: {e}")
                return {}

            monitor.raise_for_status()
        except requests.exceptions.HTTPError as e:
            print(f"HTTP Error: {e}")
            return {}
        except Exception as e:
            print(f"Failed to create monitor: {e}")
            return {}

        if monitor.status_code == 201:
            monitor_id = monitor.json()["id"]
            with tempfile.NamedTemporaryFile('w', dir=str(base_path), delete=False) as tf:
                tf.write(monitor_id)
                tempname = tf.name
            os.replace(tempname, minion_path)
            print(f"Created monitor with ID: {monitor_id}")
            return {"sentry_cron": {"monitor_id": monitor_id}}

        print(f"Failed to create monitor: {monitor.text}")
        return {} 
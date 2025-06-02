"""Salt extenstion to replace dms.py (Dead Man's Snitch) by using Sentry's cron monitors.

It grabs the pillar secrets bearer token and upserts a new monitor for the minion it runs on
and stores the monitor ID in a file in /etc/sentry-cron/.

The schedule is every 15 minutes to match our highstate check interval.

You can call it via:
    - sudo salt-call -l debug pillar.get sentry_cron
    - sudo salt-call pillar.get sentry
    - sudo salt-call pillar.get secrets

View below print output via:
    - sudo journalctl -u salt-master
"""
import pathlib

try:
    import requests
    HAS_REQUESTS = True
except ImportError:
    HAS_REQUESTS = False


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
    if minion_path.exists():
        if monitor_id := minion_path.read_text():
            print(f"Found existing monitor ID: {monitor_id}")
            return {"sentry_cron": {"monitor_id": monitor_id}}

    headers = {
        "Authorization": f"Bearer {sentry_token}",
        "Content-Type": "application/json",
    }

    try:
        monitor = requests.post(
            f"https://sentry.io/api/0/organizations/{org_slug}/monitors/",
            headers=headers,
            json={
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
            },
            timeout=10,
        )
        monitor.raise_for_status()
    except Exception as e:
        print(f"Failed to create monitor: {e}")
        return {}

    print(f"Monitor creation response: {monitor.status_code}")
    if monitor.status_code == 201:
        monitor_id = monitor.json()["id"]
        minion_path.write_text(monitor_id)
        print(f"Created monitor with ID: {monitor_id}")
        return {"sentry_cron": {"monitor_id": monitor_id}}

    print(f"Failed to create monitor: {monitor.text}")
    return {} 
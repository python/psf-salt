import json

try:
    import requests
except ImportError:
    requests = None


def __virtual__():
    if requests is None:
        return False, ["requests must be installed and importable."]
    return True


def cluster_ready():
    # Determine if we have at least one server
    try:
        resp = requests.get("http://127.0.0.1:8500/v1/status/peers")
        resp.raise_for_status()
    except (requests.HTTPError, requests.ConnectionError):
        return False

    # We have a server, determine if we have a leader
    try:
        resp = requests.get("http://127.0.0.1:8500/v1/status/leader")
        resp.raise_for_status()
    except (requests.HTTPError, requests.ConnectionError):
        return False

    if json.loads(resp.content):
        return True
    else:
        return False


def node_exists(name, address, dc=None):
    params = {}
    if dc is not None:
        params["dc"] = dc

    resp = requests.get(
        "http://127.0.0.1:8500/v1/catalog/nodes",
        params=params,
    )
    resp.raise_for_status()

    for node in json.loads(resp.content):
        if node["Node"] == name and node["Address"] == address:
            return True

    return False


def node_service_exists(node, service_name, port, dc=None):
    params = {}
    if dc is not None:
        params["dc"] = dc

    resp = requests.get(
        "http://127.0.0.1:8500/v1/catalog/node/{}".format(node),
        params=params,
    )
    resp.raise_for_status()

    for service in json.loads(resp.content)["Services"].values():
        if service["Service"] == service_name and service["Port"] == port:
            return True

    return False


def register_external_service(node, address, datacenter, service, port, token):
    data = {
        "Datacenter": datacenter,
        "Node": node,
        "Address": address,
        "Service": {
            "Service": service,
            "Port": port,
        }
    }

    resp = requests.put(
        "http://127.0.0.1:8500/v1/catalog/register",
        headers={'content-type': 'application/json'},
        data=json.dumps(data),
        params={"token": token},
    )
    resp.raise_for_status()


def get_acl_by_name(token, name):
    resp = requests.get(
        "http://127.0.0.1:8500/v1/acl/list",
        params={"token": token},
    )
    resp.raise_for_status()

    for item in resp.json():
        if item["Name"] == name:
            return item


def create_acl(token, name, rules):
    data = {"Name": name, "Rules": json.dumps(rules)}

    resp = requests.put(
        "http://127.0.0.1:8500/v1/acl/create",
        headers={'content-type': 'application/json'},
        data=json.dumps(data),
        params={"token": token},
    )
    resp.raise_for_status()

    return resp.json()


def update_acl(token, id, name, rules):
    data = {"ID": id, "Name": name, "Rules": json.dumps(rules)}

    resp = requests.put(
        "http://127.0.0.1:8500/v1/acl/update",
        headers={'content-type': 'application/json'},
        data=json.dumps(data),
        params={"token": token},
    )
    resp.raise_for_status()

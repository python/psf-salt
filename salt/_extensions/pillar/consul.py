import base64
import os
import os.path

import ca


def _encryption_key(key_path):
    if not os.path.exists(key_path):
        data = base64.b64encode(os.urandom(16))

        if not os.path.exists(os.path.dirname(key_path)):
            os.makedirs(os.path.dirname(key_path))

        with ca._secure_open_write(key_path, 0o0600) as fp:
            fp.write(data)
    else:
        with open(key_path) as fp:
            data = fp.read()

    return data


def _ca_pem(base, name, cn, server=False):
    # Ensure we have a CA created.
    opts = {
        "CN": name,
        "C": "US",
        "ST": "NH",
        "L": "Wolfeboro",
        "O": "Python Software Foundation",
        "OU": "Infractructure Team",
        "emailAddress": "infrastructure@python.org",
    }
    ca.create_ca(base, name, **opts)

    # Generate a certificate for this minion
    ca.create_ca_signed_cert(
        base, name, CN=cn, server_auth=server, client_auth=True,
    )


def ext_pillar(minion_id, pillar, key_path, base="/etc/ssl"):
    # Should this certificate be valid for servers?
    server = ca.compound(pillar.get("roles", {}).get("consul"), minion_id)

    # Create the CA and TLS Certificate
    _ca_pem(base, "CONSUL_CA", "consul." + minion_id, server=server)

    return {
        "consul": {
            "encryption": {
                "key": _encryption_key(key_path),
                "ca": ca.get_ca_cert(base, "CONSUL_CA"),
                "cert": ca.get_ca_signed_cert(
                    base, "CONSUL_CA", "consul." + minion_id,
                ),
            },
        },
    }

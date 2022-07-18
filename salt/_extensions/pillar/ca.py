from __future__ import division

import binascii
import datetime
import os.path

import salt.loader

import OpenSSL


def compound(tgt, minion_id=None):
    opts = {'grains': __grains__}
    opts['id'] = minion_id
    matcher = salt.loader.matchers(dict(__opts__, **opts))['compound_match.match']
    try:
        return matcher(tgt)
    except Exception:
        pass
    return False


def _secure_open_write(filename, fmode):
    # We only want to write to this file, so open it in write only mode
    flags = os.O_WRONLY

    # os.O_CREAT | os.O_EXCL will fail if the file already exists, so we only
    #  will open *new* files.
    # We specify this because we want to ensure that the mode we pass is the
    # mode of the file.
    flags |= os.O_CREAT | os.O_EXCL

    # Do not follow symlinks to prevent someone from making a symlink that
    # we follow and insecurely open a cache file.
    if hasattr(os, "O_NOFOLLOW"):
        flags |= os.O_NOFOLLOW

    # On Windows we'll mark this file as binary
    if hasattr(os, "O_BINARY"):
        flags |= os.O_BINARY

    # Before we open our file, we want to delete any existing file that is
    # there
    try:
        os.remove(filename)
    except (IOError, OSError):
        # The file must not exist already, so we can just skip ahead to opening
        pass

    # Open our file, the use of os.O_CREAT | os.O_EXCL will ensure that if a
    # race condition happens between the os.remove and this line, that an
    # error will be raised.
    fd = os.open(filename, flags, fmode)
    try:
        return os.fdopen(fd, "wb")
    except:
        # An error occurred wrapping our FD in a file object
        os.close(fd)
        raise


def _new_serial():
    return int(binascii.hexlify(os.urandom(20)), 16)


def ca_exists(cacert_path, ca_name):
    certp = "{0}/{1}/{2}_ca_cert.crt".format(cacert_path, ca_name, ca_name)
    return os.path.exists(certp)


def create_ca(
    cacert_path,
    ca_name,
    bits=2048,
    days=365 * 5,
    CN="PSF Infrastructure CA",
    C="US",
    ST="NH",
    L="Wolfeboro",
    O="Python Software Foundation",
    OU="Infrastructure Team",
    emailAddress="infrastructure@python.org",
    digest="sha256",
):

    certp = "{0}/{1}/{2}_ca_cert.crt".format(cacert_path, ca_name, ca_name)
    ca_keyp = "{0}/{1}/{2}_ca_cert.key".format(cacert_path, ca_name, ca_name)

    if ca_exists(cacert_path, ca_name):
        return

    if not os.path.exists("{0}/{1}".format(cacert_path, ca_name)):
        os.makedirs("{0}/{1}".format(cacert_path, ca_name))

    if os.path.exists(certp):
        os.remove(certp)

    if os.path.exists(ca_keyp):
        os.remove(ca_keyp)

    key = OpenSSL.crypto.PKey()
    key.generate_key(OpenSSL.crypto.TYPE_RSA, bits)

    ca = OpenSSL.crypto.X509()
    ca.set_version(2)
    ca.set_serial_number(_new_serial())
    ca.get_subject().C = C
    ca.get_subject().ST = ST
    ca.get_subject().L = L
    ca.get_subject().O = O
    if OU:
        ca.get_subject().OU = OU
    ca.get_subject().CN = CN
    ca.get_subject().emailAddress = emailAddress

    ca.gmtime_adj_notBefore(0)
    ca.gmtime_adj_notAfter(int(days) * 24 * 60 * 60)
    ca.set_issuer(ca.get_subject())
    ca.set_pubkey(key)

    ca.add_extensions(
        [
            OpenSSL.crypto.X509Extension(
                b"basicConstraints", True, b"CA:TRUE, pathlen:0"
            ),
            OpenSSL.crypto.X509Extension(b"keyUsage", True, b"keyCertSign, cRLSign"),
            OpenSSL.crypto.X509Extension(
                b"subjectKeyIdentifier", False, b"hash", subject=ca
            ),
        ]
    )

    ca.add_extensions(
        [
            OpenSSL.crypto.X509Extension(
                b"authorityKeyIdentifier",
                False,
                b"issuer:always,keyid:always",
                issuer=ca,
            )
        ]
    )
    ca.sign(key, digest)

    with _secure_open_write(ca_keyp, 0o0600) as fp:
        fp.write(OpenSSL.crypto.dump_privatekey(OpenSSL.crypto.FILETYPE_PEM, key))

    with _secure_open_write(certp, 0o0644) as fp:
        fp.write(OpenSSL.crypto.dump_certificate(OpenSSL.crypto.FILETYPE_PEM, ca))


def get_ca_cert(cacert_path, ca_name):
    certp = "{0}/{1}/{2}_ca_cert.crt".format(cacert_path, ca_name, ca_name)

    with open(certp, "r") as fp:
        cert = fp.read()

    return cert


def cert_exists(cacert_path, ca_name, CN):
    certp = "{0}/{1}/certs/{2}.crt".format(cacert_path, ca_name, CN)
    keyp = "{0}/{1}/private/{2}.key".format(cacert_path, ca_name, CN)
    return os.path.exists(certp) and os.path.exists(keyp)


def create_ca_signed_cert(
    cacert_path,
    ca_name,
    bits=2048,
    days=1,
    CN="localhost",
    C="US",
    ST="NH",
    L="Wolfeboro",
    O="Python Software Foundation",
    OU="Infrastructure Team",
    emailAddress="infrastructure@python.org",
    digest="sha256",
    server_auth=True,
    client_auth=False,
):
    certp = "{0}/{1}/certs/{2}.crt".format(cacert_path, ca_name, CN)
    keyp = "{0}/{1}/private/{2}.key".format(cacert_path, ca_name, CN)
    ca_certp = "{0}/{1}/{2}_ca_cert.crt".format(cacert_path, ca_name, ca_name)
    ca_keyp = "{0}/{1}/{2}_ca_cert.key".format(cacert_path, ca_name, ca_name)

    valid_for = int(days) * 24 * 60 * 60

    if cert_exists(cacert_path, ca_name, CN):
        with open(certp, "r") as fp:
            cert = OpenSSL.crypto.load_certificate(
                OpenSSL.crypto.FILETYPE_PEM,
                fp.read(),
            )
        not_after = datetime.datetime.strptime(
            cert.get_notAfter().decode(),
            "%Y%m%d%H%M%SZ",
        )
        ttl = (not_after - datetime.datetime.utcnow()).total_seconds()
        if not_after >= datetime.datetime.utcnow() and (ttl / valid_for) > 0.25:
            return

    if not os.path.exists(os.path.dirname(certp)):
        os.makedirs(os.path.dirname(certp))

    if not os.path.exists(os.path.dirname(keyp)):
        os.makedirs(os.path.dirname(keyp))

    if os.path.exists(certp):
        os.remove(certp)

    if os.path.exists(keyp):
        os.remove(keyp)

    with open(ca_certp, "r") as fp:
        ca_cert = OpenSSL.crypto.load_certificate(
            OpenSSL.crypto.FILETYPE_PEM,
            fp.read(),
        )

    with open(ca_keyp, "r") as fp:
        ca_key = OpenSSL.crypto.load_privatekey(
            OpenSSL.crypto.FILETYPE_PEM,
            fp.read(),
        )

    key = OpenSSL.crypto.PKey()
    key.generate_key(OpenSSL.crypto.TYPE_RSA, bits)

    # create certificate
    cert = OpenSSL.crypto.X509()
    cert.set_version(2)
    cert.gmtime_adj_notBefore(0)
    cert.gmtime_adj_notAfter(valid_for)
    cert.get_subject().C = C
    cert.get_subject().ST = ST
    cert.get_subject().L = L
    cert.get_subject().O = O
    if OU:
        cert.get_subject().OU = OU
    cert.get_subject().CN = CN
    cert.get_subject().emailAddress = emailAddress
    cert.set_serial_number(_new_serial())
    cert.set_issuer(ca_cert.get_subject())
    cert.set_pubkey(key)

    usage = []
    if server_auth:
        usage += ["serverAuth"]
    if client_auth:
        usage += ["clientAuth"]

    cert.add_extensions(
        [
            OpenSSL.crypto.X509Extension(
                b"subjectAltName",
                False,
                ", ".join(["DNS:" + CN]).encode('utf-8'),
            ),
            OpenSSL.crypto.X509Extension(
                b"keyUsage",
                True,
                b"digitalSignature, keyEncipherment",
            ),
            OpenSSL.crypto.X509Extension(
                b"extendedKeyUsage",
                False,
                ", ".join(usage).encode(),
            ),
        ]
    )

    # Sign the certificate with the CA
    cert.sign(ca_key, digest)

    # Write out the private and public keys
    with _secure_open_write(keyp, 0o0600) as fp:
        fp.write(OpenSSL.crypto.dump_privatekey(OpenSSL.crypto.FILETYPE_PEM, key))

    with _secure_open_write(certp, 0o0644) as fp:
        fp.write(OpenSSL.crypto.dump_certificate(OpenSSL.crypto.FILETYPE_PEM, cert))


def get_ca_signed_cert(cacert_path, ca_name, CN):
    certp = "{0}/{1}/certs/{2}.crt".format(cacert_path, ca_name, CN)
    keyp = "{0}/{1}/private/{2}.key".format(cacert_path, ca_name, CN)

    with open(certp, "r") as fp:
        cert = fp.read()

    with open(keyp, "r") as fp:
        key = fp.read()

    return "\n".join([cert, key])


def ext_pillar(minion_id, pillar, base="/etc/ssl", name="PSFCA", cert_opts=None):
    if cert_opts is None:
        cert_opts = {}

    # Ensure we have a CA created.
    opts = cert_opts.copy()
    opts["CN"] = name
    create_ca(base, name, **opts)

    # Start our pillar with just the ca certificate.
    data = {
        "tls": {
            "ca": {
                name: get_ca_cert(base, name),
            },
            "certs": {},
        },
    }

    # Create all of the certificates required by this minion
    gen_certs = pillar.get("tls", {}).get("gen_certs", {})
    for certificate, config in gen_certs.items():
        role_patterns = [
            role.get("pattern")
            for role in [
                pillar.get("roles", {}).get(r) for r in config.get("roles", "")
            ]
            if role and role.get("pattern") is not None
        ]
        if any([compound(pat, minion_id) for pat in role_patterns]):
            # Create the options
            opts = cert_opts.copy()
            opts["CN"] = certificate
            opts["days"] = config.get("days", 1)

            # Create the signed certificates
            create_ca_signed_cert(base, name, **opts)

            # Add the signed certificates to the pillar data
            cert_data = get_ca_signed_cert(base, name, certificate)
            data["tls"]["certs"][certificate] = cert_data

    return data

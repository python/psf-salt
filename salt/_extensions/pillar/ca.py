from __future__ import division

import datetime
import fcntl
import os.path

import salt.loader

from cryptography import x509
from cryptography.hazmat.primitives import hashes, serialization
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.x509.oid import ExtendedKeyUsageOID, NameOID


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
    return x509.random_serial_number()


def _subject(C, ST, L, O, OU, CN, emailAddress):
    attributes = [
        x509.NameAttribute(NameOID.COUNTRY_NAME, C),
        x509.NameAttribute(NameOID.STATE_OR_PROVINCE_NAME, ST),
        x509.NameAttribute(NameOID.LOCALITY_NAME, L),
        x509.NameAttribute(NameOID.ORGANIZATION_NAME, O),
    ]
    if OU:
        attributes.append(x509.NameAttribute(NameOID.ORGANIZATIONAL_UNIT_NAME, OU))
    attributes.extend([
        x509.NameAttribute(NameOID.COMMON_NAME, CN),
        x509.NameAttribute(NameOID.EMAIL_ADDRESS, emailAddress),
    ])
    return x509.Name(attributes)


def _private_key_pem(key):
    return key.private_bytes(
        serialization.Encoding.PEM,
        serialization.PrivateFormat.PKCS8,
        serialization.NoEncryption(),
    )


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

    key = rsa.generate_private_key(public_exponent=65537, key_size=bits)
    subject = _subject(C, ST, L, O, OU, CN, emailAddress)
    now = datetime.datetime.now(datetime.timezone.utc)
    serial = _new_serial()
    subject_key_id = x509.SubjectKeyIdentifier.from_public_key(key.public_key())
    ca = (
        x509.CertificateBuilder()
        .subject_name(subject)
        .issuer_name(subject)
        .public_key(key.public_key())
        .serial_number(serial)
        .not_valid_before(now)
        .not_valid_after(now + datetime.timedelta(days=int(days)))
        .add_extension(x509.BasicConstraints(ca=True, path_length=0), critical=True)
        .add_extension(
            x509.KeyUsage(
                digital_signature=False, content_commitment=False,
                key_encipherment=False, data_encipherment=False,
                key_agreement=False, key_cert_sign=True, crl_sign=True,
                encipher_only=False, decipher_only=False,
            ),
            critical=True,
        )
        .add_extension(subject_key_id, critical=False)
        .add_extension(
            x509.AuthorityKeyIdentifier(
                key_identifier=subject_key_id.digest,
                authority_cert_issuer=[x509.DirectoryName(subject)],
                authority_cert_serial_number=serial,
            ),
            critical=False,
        )
        .sign(key, getattr(hashes, digest.upper())())
    )

    with _secure_open_write(ca_keyp, 0o0600) as fp:
        fp.write(_private_key_pem(key))

    with _secure_open_write(certp, 0o0644) as fp:
        fp.write(ca.public_bytes(serialization.Encoding.PEM))


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
    now = datetime.datetime.now(datetime.timezone.utc)

    if cert_exists(cacert_path, ca_name, CN):
        with open(certp, "rb") as fp:
            cert = x509.load_pem_x509_certificate(fp.read())
        if hasattr(cert, "not_valid_after_utc"):
            not_after = cert.not_valid_after_utc
        else:
            not_after = cert.not_valid_after.replace(tzinfo=datetime.timezone.utc)
        ttl = (not_after - now).total_seconds()
        if not_after >= now and (ttl / valid_for) > 0.25:
            return

    os.makedirs(os.path.dirname(certp), exist_ok=True)
    os.makedirs(os.path.dirname(keyp), exist_ok=True)

    with open(ca_certp, "rb") as fp:
        ca_cert = x509.load_pem_x509_certificate(fp.read())

    with open(ca_keyp, "rb") as fp:
        ca_key = serialization.load_pem_private_key(fp.read(), password=None)

    key = rsa.generate_private_key(public_exponent=65537, key_size=bits)

    usage = []
    if server_auth:
        usage.append(ExtendedKeyUsageOID.SERVER_AUTH)
    if client_auth:
        usage.append(ExtendedKeyUsageOID.CLIENT_AUTH)

    cert = (
        x509.CertificateBuilder()
        .subject_name(_subject(C, ST, L, O, OU, CN, emailAddress))
        .issuer_name(ca_cert.subject)
        .public_key(key.public_key())
        .serial_number(_new_serial())
        .not_valid_before(now)
        .not_valid_after(now + datetime.timedelta(seconds=valid_for))
        .add_extension(x509.SubjectAlternativeName([x509.DNSName(CN)]), critical=False)
        .add_extension(
            x509.KeyUsage(
                digital_signature=True, content_commitment=False,
                key_encipherment=True, data_encipherment=False,
                key_agreement=False, key_cert_sign=False, crl_sign=False,
                encipher_only=False, decipher_only=False,
            ),
            critical=True,
        )
        .add_extension(x509.ExtendedKeyUsage(usage), critical=False)
        .sign(ca_key, getattr(hashes, digest.upper())())
    )

    # Finish signing before replacing any existing certificate or key.
    with _secure_open_write(keyp, 0o0600) as fp:
        fp.write(_private_key_pem(key))

    with _secure_open_write(certp, 0o0644) as fp:
        fp.write(cert.public_bytes(serialization.Encoding.PEM))


def get_ca_signed_cert(cacert_path, ca_name, CN):
    certp = "{0}/{1}/certs/{2}.crt".format(cacert_path, ca_name, CN)
    keyp = "{0}/{1}/private/{2}.key".format(cacert_path, ca_name, CN)

    with open(certp, "r") as fp:
        cert = fp.read()

    with open(keyp, "r") as fp:
        key = fp.read()

    return "\n".join([cert, key])


def _read_cert_file(path: str) -> str:
    """Helper to read certificate files, which might be symlinks"""
    try:
        with open(path, 'r') as f:
            return f.read()
    except (IOError, OSError):
        return None


def ext_pillar(minion_id, pillar, base="/etc/ssl", name="PSFCA", cert_opts=None):
    if cert_opts is None:
        cert_opts = {}

    # Create CA certificate
    opts = cert_opts.copy()
    opts["CN"] = name
    create_ca(base, name, **opts)

    data = {
        "tls": {
            "ca": {
                name: get_ca_cert(base, name),
            },
            "certs": {},
            "acme_certs": {},
        },
    }

    minion_roles = []
    minion_roles.extend(
        role_name
        for role_name, role_config in pillar.get("roles", {}).items()
        if role_config.get("pattern")
        and compound(role_config["pattern"], minion_id)
    )

    # Process CA-signed certificates (gen_certs)
    gen_certs = pillar.get("tls", {}).get("gen_certs", {})
    for certificate, config in gen_certs.items():
        cert_roles = config.get("roles", [])
        # Check if any of the minion's roles are in the certificate's required roles
        if any(role in minion_roles for role in cert_roles):
            # Create the options
            opts = cert_opts.copy()
            opts["CN"] = certificate
            opts["days"] = config.get("days", 1)

            # Lock per-CN to prevent concurrent pillar compilations from
            # racing on the same cert/key files.
            lockp = os.path.join(base, name, "certs", "{}.lock".format(certificate))
            os.makedirs(os.path.dirname(lockp), exist_ok=True)
            lock_fd = open(lockp, "w")
            try:
                fcntl.flock(lock_fd, fcntl.LOCK_EX)
                create_ca_signed_cert(base, name, **opts)
                cert_data = get_ca_signed_cert(base, name, certificate)
            finally:
                fcntl.flock(lock_fd, fcntl.LOCK_UN)
                lock_fd.close()

            data["tls"]["certs"][certificate] = cert_data

    # Collect ACME certs (acme.cert) for this minion based on its roles
    acme_cert_configs = pillar.get("tls", {}).get("acme_cert_configs", {})
    for domain, domain_config in acme_cert_configs.items():
        cert_roles = domain_config.get("roles", [])
        if any(role in minion_roles for role in cert_roles):
            cert_name = domain_config.get('name', domain)
            full_cert_chain = _read_cert_file(f"/etc/letsencrypt/live/{cert_name}/fullchain.pem")
            privkey = _read_cert_file(f"/etc/letsencrypt/live/{cert_name}/privkey.pem")

            if full_cert_chain and privkey:
                data["tls"]["acme_certs"][domain] = full_cert_chain + "\n" + privkey

    return data
from __future__ import division

import binascii
import datetime
import os.path
from pathlib import Path

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


def _find_acme_certs(base_path="/etc/letsencrypt/live"):
    """Read ACME certificates from /etc/letsencrypt/live
    
    returns dict with domain name (key) and data (value for each cert.
    """
    acme_certs = {}
    try:
        if not Path(base_path).exists():
            print(f"ACME base path {base_path} does not exist")
            return acme_certs

        print(f"Scanning for certificates in {base_path}")
        for domain_dir in Path(base_path).iterdir():
            try:
                domain_dir_path = Path(base_path) / domain_dir
                if not domain_dir_path.is_dir() or domain_dir.name == "README":
                    continue

                domain_name = domain_dir.name
                print(f"Found certificate directory: {domain_name}")

                # use fullchain.pem instead of just cert.pem to include the full certificate chain
                cert_file = domain_dir_path / "fullchain.pem"
                key_file = domain_dir_path / "privkey.pem"

                if not cert_file.exists():
                    print(f"Certificate file not found: {cert_file}")
                    continue
                    
                if not key_file.exists():
                    print(f"Key file not found: {key_file}")
                    continue

                with cert_file.open('r') as f_cert:
                    cert_data = f_cert.read()

                with key_file.open('r') as f_key:
                    key_data = f_key.read()

                # Store combined certificate and key
                combined_data = "\n".join([cert_data, key_data])
                acme_certs[domain_name] = combined_data
                # print(f"read certificate for {domain_name}")

            except Exception as e:
                print(f"Error processing certificate for {domain_dir.name}: {e}")
    
    except Exception as e:
        print(f"Error scanning ACME certificates directory: {e}")

    print(f"Found {len(acme_certs)} ACME certificates")
    return acme_certs


def _process_ca_certificates(minion_id, pillar, base="/etc/ssl", name="PSFCA", cert_opts=None):
    ca_data = {
        "ca": {},
        "certs": {},
    }

    try:
        if cert_opts is None:
            cert_opts = {}

        # Create CA certificate
        opts = cert_opts.copy()
        opts["CN"] = name
        create_ca(base, name, **opts)

        ca_data["ca"][name] = get_ca_cert(base, name)

        # Process CA-signed certificates (gen_certs)
        gen_certs = pillar.get("tls", {}).get("gen_certs", {})
        for certificate, config in gen_certs.items():
            role_patterns = [
                role.get("pattern")
                for role in [
                    pillar.get("roles", {}).get(r) for r in config.get("roles", "")
                ]
                if role and role.get("pattern") is not None
            ]

            if any(compound(pat, minion_id) for pat in role_patterns):
                # Create the options
                opts = cert_opts.copy()
                opts["CN"] = certificate
                opts["days"] = config.get("days", 1)

                create_ca_signed_cert(base, name, **opts)

                # Add the signed certificates to the pillar data
                cert_data = get_ca_signed_cert(base, name, certificate)
                ca_data["certs"][certificate] = cert_data
    except Exception as e:
        print(f"Error processing CA certificates: {e}")

    return ca_data


def _process_acme_certificates(minion_id, pillar):
    """Process ACME certificates
    
    Reads ACME certificates and determines which ones should be available
    to the specified minion based on access rules.
    """
    acme_certs = {}
    
    try:
        print(f"Processing ACME certificates for minion: {minion_id}")
        all_acme_certs = _find_acme_certs()
        
        # Check if this is a loadbalancer (gets all certs)
        # todo: clean up all but the one that works
        is_loadbalancer = False
        try:
            if 'loadbalancer' in minion_id.lower():
                is_loadbalancer = True
                print(f"Minion {minion_id} identified as loadbalancer by name")
            
            # Also check via roles grain if that doesn't work
            elif compound('G@roles:loadbalancer', minion_id):
                is_loadbalancer = True
                print(f"Minion {minion_id} identified as loadbalancer by grain")
            
            # Additional check - look for the loadbalancer role in the hostname
            elif (minion_id.startswith('lb.') or minion_id.startswith('loadbalancer.')):
                is_loadbalancer = True
                print(f"Minion {minion_id} identified as loadbalancer by hostname pattern")
                
            if is_loadbalancer:
                print(f"Minion {minion_id} is a loadbalancer, providing all certificates")
        except Exception as e:
            print(f"Error checking loadbalancer role: {e}")
        
        # Process each certificate
        for domain_name, cert_data in all_acme_certs.items():
            should_include = False
            
            # Loadbalancer gets all certs
            if is_loadbalancer:
                should_include = True
                reason = "loadbalancer role"
            
            # Minion name matches domain name
            if minion_id.startswith(domain_name.split('.')[0]):
                should_include = True
                reason = "name match"

            # Add certificate if allowed
            if should_include:
                acme_certs[domain_name] = cert_data
                print(f"Added ACME certificate {domain_name} to pillar data (reason: {reason})")
            else:
                print(f"Skipping certificate {domain_name} for minion {minion_id} (no access)")
    
    except Exception as e:
        print(f"Error processing ACME certificates: {e}")
    
    return acme_certs


def ext_pillar(minion_id, pillar, base="/etc/ssl", name="PSFCA", cert_opts=None):
    """Pillar extension to provide TLS certificates from internal PSFCA and acme.cert generated certs"""
    print(f"Processing pillar data for minion: {minion_id}")
    
    # initial data structure for certs
    data = {
        "tls": {
            "ca": {},
            "certs": {},
            "certs_acme": {},
        },
    }
    
    # Process CA certificates and CA-signed certificates
    ca_data = _process_ca_certificates(minion_id, pillar, base, name, cert_opts)
    data["tls"]["ca"] = ca_data["ca"]
    for cert_name, cert_data in ca_data["certs"].items():
        data["tls"]["certs"][cert_name] = cert_data
    
    # process ACME certificates
    acme_certs = _process_acme_certificates(minion_id, pillar)
    
    # Add ACME certificates to both certs and certs_acme sections
    for cert_name, cert_data in acme_certs.items():
        # Store in certs_acme section (dedicated for ACME certificates)
        data["tls"]["certs_acme"][cert_name] = cert_data
        
        # Also store in general certs section for backward compatibility
        # Only if not already present from CA-signed certs
        if cert_name not in data["tls"]["certs"]:
            data["tls"]["certs"][cert_name] = cert_data
    
    # Check if we have ACME certificates for debugging
    if not acme_certs:
        print(f"No ACME certificates were included for minion: {minion_id}")
    else:
        print(f"Included {len(acme_certs)} ACME certificates for minion: {minion_id}")
    
    return data

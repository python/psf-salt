Security
========

TLS Cipher Suites
-----------------

Any place where TLS is being used and a cipher string can be specified a cipher
string from the ``tls.ciphers`` pillar should be used. Ideally this will be
used in a way like::

    {{ pillar["tls"]["ciphers"].get("a unique name", pillar["tls"]["ciphers"]["default"]) }}

This will ensure that the ciphers can all be configured in one place, that by
default the same cipher strings are used everywhere, but still allow overriding
the cipher strings for each service where it makes sense.


Service Authenticity
--------------------

In order to validate that a particular server is allowed to function as a
particular service the infrastructure makes use of TLS certificates signed by
a custom certificate authority.

A new service can be given a certificate by editing the ``pillar/base/tls.sls``
file and adding a new section under the ``gen_certs`` key. This should look
something like::

    tls:
      gen_certs:
        postgresql.psf.io:
          days: 7
          roles:
            - postgresql

Where ``days`` is how many days a particular certificate should be valid for,
and ``roles`` is a list of roles which need access to this certificate. It is
important that the ``days`` argument be kept short so that a compromised key
is only valid for a small window. The system will ensure that it replaces any
soon to expire certificates with new certificates before they expire.

This certificate will then be available on the servers at
``/etc/ssl/private/{{ name }}.pem``. That file contains both the certificate
itself and the private key for the certificate. It can be validated against the
``/etc/ssl/certs/PSF_CA.pem`` file which is available on all servers as well.

This requires configuration on the master like::

    extension_modules: srv/salt/_extensions

    ext_pillar:
      - ca:
          name: PSF_CA
          cert_opts:
            C: US
            ST: NH
            L: Wolfeboro
            O: Python Software Foundation
            OU: Infrastructure Team
            emailAddress: infrastructure@python.org

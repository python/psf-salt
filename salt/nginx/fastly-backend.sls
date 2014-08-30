python-openssl:
  pkg.installed

self-signed-cert:
  module.run:
    # TODO: sign with SHA-256 instead of SHA-1.
    - name: tls.create_self_signed_cert
    - bits: 2048
    - days: 1825 # 5 years
    - CN: {{ grains["fqdn"] }}
    - C: "US"
    - ST: "No such state"
    - L: "No such place"
    - O: "PSF Internal Certs"
    - emailAddress: "infrastructure-staff@python.org"
    - tls_dir: "fastly-backend"
    - require:
      - pkg: python-openssl

/etc/nginx/conf.d/fastly-backend.conf:
  file.managed:
    - source: salt://nginx/config/nginx.fastly-backend.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - module: self-signed-cert

/etc/pki/fastly-backend/certs/ca-2014-08-30.crt:
  file.managed:
    - contents: |
        -----BEGIN CERTIFICATE-----
        MIIDbTCCAlWgAwIBAgIJAJTgMXhDA7+MMA0GCSqGSIb3DQEBCwUAME0xGzAZBgNV
        BAMMElBTRiBJbnRlcm5hbCBDZXJ0czEuMCwGCSqGSIb3DQEJARYfaW5mcmFzdHJ1
        Y3R1cmUtc3RhZmZAcHl0aG9uLm9yZzAeFw0xNDA4MzAxNjI1MjNaFw0yNDA4Mjcx
        NjI1MjNaME0xGzAZBgNVBAMMElBTRiBJbnRlcm5hbCBDZXJ0czEuMCwGCSqGSIb3
        DQEJARYfaW5mcmFzdHJ1Y3R1cmUtc3RhZmZAcHl0aG9uLm9yZzCCASIwDQYJKoZI
        hvcNAQEBBQADggEPADCCAQoCggEBANnNgN7XNbQoVeGplBOIfKbeunyoc2Mda7j8
        iEu3UBcNRY0bB/cNCEXQVYwX/yD+qOfRhk9JWTZk/rRxpGnN55fLIyMWils8IS9e
        QYhX2UGOivSWkP06St48CwUNs13cfBudQHC3jwZVwPSJzJsG1bqB2zOPI5OaFGe9
        pN/JTNtZ6l2v+2+ZLhGOu/W6if1DO2DYDNJyy9DQY73Brtxc64GUeieE+1bqBQ+U
        xk2gDaMZhpJfpJAjzxmF9G9qBI8DIbJCZ8wy5nB0rBPPF/fBbt+1bGR8pxofOLdx
        Hn9ei5vUDJq7XJUJ7V+SY+ID7/HHd5rDh5JVVq2ysd5vutb62+ECAwEAAaNQME4w
        HQYDVR0OBBYEFFQQ+pe+bUjkK2fmLwLjg8h8MbR9MB8GA1UdIwQYMBaAFFQQ+pe+
        bUjkK2fmLwLjg8h8MbR9MAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEB
        AM/hdYkMYeMyfdbLkMEnCQrI3y1ujJUsJT782UkxGX4kb3pshShh9qzXqd/dsbyT
        0uK7TrK9apkNJ5Ogr3clty4kK8GYB63kBPxZdQzNaA75F8WJymkjlewR6mw7RG84
        L4NSqLqmZg/9AcQ4ndguy0irDAqronafazoTaR6TeZh6DobseLS3Z/IGwwQk9WP+
        bLWqwuszUOM7a+QE2emQ3r8ROiviXUn8vYs40kPvUGcrxEqmwbISnB/H8j7Rjb2s
        AQgMfu1e04cNBKbxF8yiMgpuNV88d9+KnSj/j3rTzaK3bRmL1eHPBINehym8XNc3
        JkmRTRQj20WmV2nqwNsMlLs=
        -----END CERTIFICATE-----
    - user: root
    - group: root
    - mode: 600
    - require:
      - module: self-signed-cert

/etc/pki/fastly-backend/:
  file.directory:
    - user: root
    - group: root
    - file_mode: 600
    - dir_mode: 700
    - recurse:
      - user
      - group
      - mode

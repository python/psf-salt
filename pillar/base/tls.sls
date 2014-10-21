# This a mapping of role names to TLS certificates that are required for that
# particular role.

tls:
  ciphers:
    default: ECDH+AESGCM:DH+AESGCM:ECDH+AES256:DH+AES256:ECDH+AES128:DH+AES:!AES256:!aNULL:!eNULL:!MD5:!DSS:!PSK:!SRP
    haproxy: ECDH+AESGCM:DH+AESGCM:ECDH+AES256:DH+AES256:ECDH+AES128:DH+AES:ECDH+3DES:DH+3DES:3DES:!AES256:!aNULL:!eNULL:!MD5:!DSS:!PSK:!SRP

  gen_certs:
    hg.psf.io:
      roles:
        - hg

    postgresql.psf.io:
      days: 7
      roles:
        - postgresql

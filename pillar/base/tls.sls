# This a mapping of role names to TLS certificates that are required for that
# particular role.

tls:
  ciphers:
    default: ECDH+AESGCM:DH+AESGCM:ECDH+AES256:DH+AES256:ECDH+AES128:DH+AES:!AES256:!aNULL:!eNULL:!MD5:!DSS:!PSK:!SRP

  gen_certs:
    consul.psf.io:
      roles:
        - consul

    docs.psf.io:
      roles:
        - docs

    downloads.psf.io:
      roles:
        - downloads

    hg.psf.io:
      roles:
        - hg

    linehaul.psf.io:
      roles:
        - linehaul

    lb.psf.io:
      roles:
        - loadbalancer

    codespeed.psf.io:
      roles:
        - codespeed

    bootstrap.pypa.psf.io:
      roles:
        - web-pypa

    salt.psf.io:
      roles:
        - salt-master

    pypy-web.psf.io:
      roles:
        - pypy-web

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

    pydotorg.psf.io:
      roles:
        - pydotorg

    pycon.psf.io:
      roles:
        - pycon

    hg.psf.io:
      roles:
        - hg

    lb.psf.io:
      roles:
        - loadbalancer

    postgresql.psf.io:
      roles:
        - postgresql

    speed-web.psf.io:
      roles:
        - speed-web

    wiki.psf.io:
      roles:
        - wiki

    bootstrap.pypa.psf.io:
      roles:
        - web-pypa

    linehaul.psf.io:
      roles:
        - linehaul

    discourse.psf.io:
      roles:
        - discourse

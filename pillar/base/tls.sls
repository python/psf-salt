# This a mapping of role names to TLS certificates that are required for that
# particular role.

tls:
  ciphers:
    default: ECDH+AESGCM:ECDH+CHACHA20:ECDH+AES256:ECDH+AES128:!aNULL:!SHA1:!AESCCM

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

    lb.psf.io:
      roles:
        - loadbalancer

    codespeed.psf.io:
      roles:
        - codespeed

    bootstrap.pypa.psf.io:
      roles:
        - web-pypa

    buildbot-master.psf.io:
      roles:
        - buildbot

    salt.psf.io:
      roles:
        - salt-master

    svn.psf.io:
      roles:
        - hg

    pypy-web.psf.io:
      roles:
        - pypy-web

    moin.psf.io:
      roles:
        - moin

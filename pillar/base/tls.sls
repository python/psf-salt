# This a mapping of role names to TLS certificates that are required for that
# particular role.

tls:
  ciphers:
    default: ECDH+AESGCM:ECDH+CHACHA20:ECDH+AES256:ECDH+AES128:!aNULL:!SHA1:!AESCCM

  gen_certs:
    buildbot-master.psf.io:
      roles:
        - buildbot

    codespeed.psf.io:
      roles:
        - codespeed

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

    moin.psf.io:
      roles:
        - moin

    planet.psf.io:
      roles:
        - planet

    bugs.psf.io:
      roles:
        - bugs

    postgresql.psf.io:
      roles:
        - postgresql

    salt.psf.io:
      roles:
        - salt-master

    salt-master.vagrant.psf.io:
      roles:
        - salt-master-vagrant

    svn.psf.io:
      roles:
        - hg

  acme_cert_configs:
    salt-public.psf.io:
      validation: http
      roles:
        - loadbalancer
    planetpython.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - www.planetpython.org
        - planet.python.org
    pypa.io:
      validation: http
      roles:
        - loadbalancer
    jython.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - jython.net
        - www.jython.net
        - jython.com
        - www.jython.com
    bugs.python.org:
      validation: http
      name: bugs.python.org
      roles:
        - loadbalancer
        - bugs
      aliases:
        - bugs.jython.org
        - issues.roundup-tracker.org
    buildbot.python.org:
      validation: http
      roles:
        - loadbalancer
    speed.python.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - speed.pypy.org
    console.python.org:
      validation: http
      roles:
        - loadbalancer
    hg.python.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - svn.python.org
    wiki.python.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - wiki.jython.org
    legacy.python.org:
      validation: http
      roles:
        - loadbalancer
    jobs.pyfound.org:
      validation: http
      roles:
        - loadbalancer

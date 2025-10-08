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
    pycon.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - www.pycon.org
    speed.pypy.org:
      validation: http
      roles:
        - loadbalancer
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
      aliases:
        - www.pypa.io
    jython.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - www.jython.net
        - jython.net
        - www.jython.com
        - jython.com
    bugs.python.org:
      validation: http
      name: bugs.python.org
      roles:
        - loadbalancer
        - bugs
      aliases:
        - bugs.jython.org
        - issues.roundup-tracker.org
        - mail.roundup-tracker.org
    buildbot.python.org:
      validation: http
      roles:
        - loadbalancer
    docs.python.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - doc.python.org
    www.python.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - python.org
        - cheeseshop.python.org
        - jobs.python.org
        - packages.python.org
        - planet.python.org
    speed.python.org:
      validation: http
      roles:
        - loadbalancer
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
    legacy.python.org:
      validation: http
      roles:
        - loadbalancer
    www.jython.org:
      validation: http
      roles:
        - loadbalancer
      aliases:
        - wiki.jython.org
    jobs.pyfound.org:
      validation: http
      roles:
        - loadbalancer
    fr.pycon.org:
      validation: http
      roles:
        - loadbalancer

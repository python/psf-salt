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

  acme_certs:
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
    bugs.python.org-multi:
      validation: http
      name: bugs.python.org
      roles:
        - loadbalancer
      aliases:
        - bugs.jython.org
        - issues.roundup-tracker.org
        - mail.roundup-tracker.org
{#    star.python.org:#}
{#      validation: dns#}
{#      dns_plugin: route53#}
{#      dns_plugin_credentials: route53.python#}
{#      roles:#}
{#        - loadbalancer#}
{#    star.pycon.org:#}
{#      validation: dns#}
{#      dns_plugin: route53#}
{#      dns_plugin_credentials: route53.pycon#}
{#      roles:#}
{#        - loadbalancer#}
{#      aliases:#}
{#        - pycon.org#}
{#    star.pyfound.org:#}
{#      validation: dns#}
{#      dns_plugin: gandiv5#}
{#      dns_plugin_credentials: gandi#}
{#      roles:#}
{#        - loadbalancer#}
{#      aliases:#}
{#        - pyfound.org#}

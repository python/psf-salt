base:
  '*':
    - base.auto-highstate
    - base.harden
    - base.mail
    - base.repo
    - base.salt
    - base.sanity
    - consul
    - groups
    - users
    - ssh
    - firewall
    - sudoers
    - backup.client
    - unattended-upgrades
    - tls
    - rsyslog
    - datadog

  'backup-server':
    - match: nodegroup
    - backup.server

  'bugs':
    - match: nodegroup
    - bugs
    - bugs.cpython
    - bugs.jython
    - bugs.roundup

  'buildbot':
    - match: nodegroup
    - pgbouncer
    - buildbot

  'cdn-logs':
    - match: nodegroup
    - cdn-logs

  'codespeed':
    - match: nodegroup
    - pgbouncer
    - codespeed

  'docs':
    - match: nodegroup
    - docs

  'downloads':
    - match: nodegroup
    - downloads

  'elasticsearch':
    - match: nodegroup
    - elasticsearch

  'hg':
    - match: nodegroup
    - hg

  'loadbalancer':
    - match: nodegroup
    - haproxy

  'moin':
    - match: nodegroup
    - moin

  'planet':
    - match: nodegroup
    - planet

  'postgresql':
    - match: nodegroup
    - postgresql.server
    - postgresql.admin

  'pypy-web':
    - match: nodegroup
    - pypy-web

  'pythontest':
    - match: nodegroup
    - pythontest

  'salt-master':
    - match: nodegroup
    - postgresql.admin
    - dns
    - tls.pebble

  'web-pypa':
    - match: nodegroup
    - pypa.bootstrap

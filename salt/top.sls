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
    - monitoring.client
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

  'cdn-logs':
    - match: nodegroup
    - cdn-logs

  'discourse':
    - match: nodegroup
    - discourse
    - redis
    - nodejs
    - nginx

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

  'jython-web':
    - match: nodegroup
    - jython

  'linehaul':
    - match: nodegroup
    - pypi.linehaul

  'loadbalancer':
    - match: nodegroup
    - haproxy

  'monitoring':
    - match: nodegroup
    - monitoring.server

  'packages':
    - match: nodegroup
    - aptly

  'planet':
    - match: nodegroup
    - planet

  'postgresql':
    - match: nodegroup
    - postgresql.server

  'pydotorg':
    - match: nodegroup
    - pydotorg

  'pycon':
    - match: nodegroup
    - pycon

  'pythontest':
    - match: nodegroup
    - pythontest

  'salt-master':
    - match: nodegroup
    - dns

  'slack':
    - match: nodegroup
    - slack-irc

  'speed-web':
    - match: nodegroup
    - speed.web

  'tracker':
    - match: nodegroup
    - postgresql.client

  'web-pypa':
    - match: nodegroup
    - pypa.bootstrap

  'wiki':
    - match: nodegroup
    - moin

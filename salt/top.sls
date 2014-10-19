base:
  '*':
    - base.auto-highstate
    - base.mail
    - base.repo
    - base.salt
    - base.sanity
    - groups
    - users
    - ssh
    - firewall
    - sudoers
    - backup.client
    - monitoring.client
    - unattended-upgrades
    - tls

  'backup-server':
    - match: nodegroup
    - backup.server

  'cdn-logs':
    - match: nodegroup
    - cdn-logs

  'docs':
    - match: nodegroup
    - docs

  'downloads':
    - match: nodegroup
    - downloads

  'hg':
    - match: nodegroup
    - hg

  'jython-web':
    - match: nodegroup
    - jython

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

  'salt-master':
    - match: nodegroup

  'tracker':
    - match: nodegroup
    - postgresql.client

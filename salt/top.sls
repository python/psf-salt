base:
  '*':
    - base.sanity
    - groups
    - firewall
    - users
    - sudoers
    - backup.client
    - auto-security

  'roles:backup-server':
    - match: grain
    - backup.server

  'roles:cdn-logs':
    - match: grain
    - cdn-logs

  'roles:docs':
    - match: grain
    - docs

  'roles:downloads':
    - match: grain
    - downloads

  'roles:hg':
    - match: grain
    - hg

  'roles:jython-web':
    - match: grain
    - jython

  'roles:loadbalancer':
    - match: grain
    - haproxy

  'roles:salt-master':
    - match: grain

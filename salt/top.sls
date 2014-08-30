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

  'roles:downloads':
    - match: grain
    - downloads

  'roles:jython-web':
    - match: grain
    - jython

  'roles:salt-master':
    - match: grain

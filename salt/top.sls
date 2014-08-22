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

  'roles:jython-web':
    - match: grain
    - jython

  'roles:salt-master':
    - match: grain

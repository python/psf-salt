base:

  '*':
    - networking
    - users
    - sudoers

  'roles:cdn-logs':
    - match: grain
    - fastly-logging
    - firewall.fastly-logging

  'roles:salt-master':
    - match: grain
    - salt-master

  'roles:jython-web':
    - match: grain
    - secrets.backup.jython-web
    - groups.jython
    - firewall.http

  'roles:backup-server':
    - match: grain
    - backup.server

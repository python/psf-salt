base:
  '*':
    - networking
    - users
    - sudoers
    - psf-ca

  'roles:apt':
    - match: grain
    - firewall.http
    - secrets.aptly

  'roles:backup-server':
    - match: grain
    - backup.server

  'roles:cdn-logs':
    - match: grain
    - fastly-logging
    - firewall.fastly-logging

  'roles:docs':
    - match: grain
    - firewall.fastly-backend
    - groups.docs

  'roles:downloads':
    - match: grain
    - firewall.fastly-backend
    - groups.downloads

  'roles:hg':
    - match: grain
    - firewall.rs-lb-backend

  'roles:salt-master':
    - match: grain
    - firewall.salt

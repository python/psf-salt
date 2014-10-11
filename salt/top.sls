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
    - psf-ca

  '* and not G@roles:vpn':
    - match: compound
    - openvpn.routing

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

  'roles:monitoring':
    - match: grain
    - monitoring.server

  'roles:packages':
    - match: grain
    - aptly

  'roles:planet':
    - match: grain
    - planet

  'roles:postgresql':
    - match: grain
    - postgresql.server

  'roles:salt-master':
    - match: grain

  'roles:tracker':
    - match: grain
    - postgresql.client

  'roles:vpn':
    - match: grain
    - duosec
    - openvpn.server

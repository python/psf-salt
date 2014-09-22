base:
  '*':
    - base.auto-highstate
    - base.salt
    - base.sanity
    - groups
    - users
    - ssh
    - firewall
    - sudoers
    - backup.client
    - auto-security
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

  'roles:tracker':
    - match: grain
    - postgresql.client

  'roles:jython-web':
    - match: grain
    - jython

  'roles:planet':
    - match: grain
    - planet

  'roles:postgresql':
    - match: grain
    - postgresql.server

  'roles:loadbalancer':
    - match: grain
    - haproxy

  'roles:salt-master':
    - match: grain

  'roles:vpn':
    - match: grain
    - duosec
    - openvpn.server

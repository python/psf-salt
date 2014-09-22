base:

  '*':
    - networking
    - users
    - sudoers
    - psf-ca

  'roles:cdn-logs':
    - match: grain
    - fastly-logging
    - firewall.fastly-logging

  'roles:docs':
    - match: grain
    - firewall.fastly-backend
    - groups.docs
    - secrets.backup.docs

  'roles:downloads':
    - match: grain
    - firewall.fastly-backend
    - groups.downloads
    - secrets.backup.downloads

  'roles:hg':
    - match: grain
    - firewall.rs-lb-backend
    - secrets.backup.hg
    - secrets.ssh.hg

  'roles:tracker':
    - match: grain
    - secrets.postgresql-users.tracker

  'roles:salt-master':
    - match: grain
    - salt-master

  'roles:jython-web':
    - match: grain
    - secrets.backup.jython-web
    - groups.jython
    - firewall.http

  'roles:planet':
    - match: grain
    - planet
    - firewall.http

  'roles:postgresql':
    - match: grain
    - firewall.postgresql
    - postgresql.server
    - secrets.psf-ca.pg

  'roles:postgresql-primary':
    - match: grain
    - secrets.postgresql-users.all

  'roles:postgresql-replica':
    - match: grain
    - secrets.postgresql-users.replica

  'roles:backup-server':
    - match: grain
    - backup.server

  'roles:loadbalancer':
    - match: grain
    - haproxy
    - firewall.loadbalancer
    - secrets.tls.certs.loadbalancer

  'roles:vpn':
    - match: grain
    - openvpn
    - firewall.vpn
    - ssh.duosec
    - secrets.openvpn.vpn
    - secrets.duosec.vpn

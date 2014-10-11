base:
  '*':
    - networking
    - users
    - sudoers
    - psf-ca

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

  'roles:jython-web':
    - match: grain
    - groups.jython
    - firewall.http

  'roles:loadbalancer':
    - match: grain
    - haproxy
    - firewall.loadbalancer
    - secrets.tls.certs.loadbalancer

  'roles:monitoring':
    - match: grain
    - firewall.monitoring
    - pgbouncer.monitoring
    - secrets.postgresql-users.monitoring
    - secrets.monitoring.server

  'roles:packages':
    - match: grain
    - firewall.http
    - aptly.packages
    - secrets.aptly

  'roles:planet':
    - match: grain
    - planet
    - firewall.http

  'roles:postgresql':
    - match: grain
    - firewall.postgresql
    - postgresql.server

  'roles:postgresql-primary':
    - match: grain
    - secrets.postgresql-users.all

  'roles:postgresql-replica':
    - match: grain
    - secrets.postgresql-users.replica

  'roles:salt-master':
    - match: grain
    - firewall.salt

  'roles:tracker':
    - match: grain
    - pgbouncer.tracker
    - secrets.postgresql-users.tracker

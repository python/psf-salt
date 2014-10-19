base:
  '*':
    - networking
    - roles
    - sudoers
    - tls
    - users

  'backup-server':
    - match: nodegroup
    - backup.server

  'cdn-logs':
    - match: nodegroup
    - fastly-logging
    - firewall.fastly-logging

  'docs':
    - match: nodegroup
    - firewall.fastly-backend
    - groups.docs

  'downloads':
    - match: nodegroup
    - firewall.fastly-backend
    - groups.downloads

  'hg':
    - match: nodegroup
    - firewall.rs-lb-backend

  'jython-web':
    - match: nodegroup
    - groups.jython
    - firewall.http

  'loadbalancer':
    - match: nodegroup
    - haproxy
    - firewall.loadbalancer
    - secrets.tls.certs.loadbalancer

  'monitoring':
    - match: nodegroup
    - firewall.monitoring
    - pgbouncer.monitoring
    - secrets.postgresql-users.monitoring
    - secrets.monitoring.server

  'packages':
    - match: nodegroup
    - firewall.http
    - aptly.packages
    - secrets.aptly

  'planet':
    - match: nodegroup
    - planet
    - firewall.http

  'postgresql':
    - match: nodegroup
    - firewall.postgresql
    - postgresql.server

  'postgresql-primary':
    - match: nodegroup
    - secrets.postgresql-users.all

  'postgresql-replica':
    - match: nodegroup
    - secrets.postgresql-users.replica

  'salt-master':
    - match: nodegroup
    - firewall.salt

  'tracker':
    - match: nodegroup
    - pgbouncer.tracker
    - secrets.postgresql-users.tracker

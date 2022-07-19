base:
  '*':
    - consul
    - firewall.consul
    - networking
    - roles
    - sudoers
    - tls
    - users
    - postgres.clusters

  'backup-server':
    - match: nodegroup
    - backup.server

  'bugs':
    - match: nodegroup
    - bugs

  'cdn-logs':
    - match: nodegroup
    - fastly-logging
    - firewall.fastly-logging

  'docs':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.docs
    - secrets.docs

  'downloads':
    - match: nodegroup
    - firewall.rs-lb-backend
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
    - secrets.fastly
    - secrets.tls.certs.loadbalancer

  'mail':
    - match: nodegroup
    - firewall.mail
    - groups.mail
    - mail-opt-out

  'monitoring':
    - match: nodegroup
    - firewall.monitoring
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
    - postgres.databases

  'postgresql-primary':
    - match: nodegroup
    - secrets.postgresql-admin
    - secrets.postgresql-users.all

  'postgresql-replica':
    - match: nodegroup
    - secrets.postgresql-users.replica

  'salt-master':
    - match: nodegroup
    - firewall.salt

  'speed-web':
    - match: nodegroup
    - firewall.rs-lb-backend
    - secrets.postgresql-users.speed-web
    - secrets.speed-web

  'tracker':
    - match: nodegroup
    - secrets.postgresql-users.tracker

  'web-pypa':
    - match: nodegroup
    - firewall.rs-lb-backend

  'wiki':
    - match: nodegroup
    - moin
    - firewall.rs-lb-backend

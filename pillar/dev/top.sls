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

  'codespeed':
    - match: nodegroup
    - firewall.codespeed
    - secrets.codespeed
    - secrets.postgresql-users.codespeed
    - codespeed

  'docs':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.docs
    - secrets.docs

  'downloads':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.downloads

  'gnumailman':
    - match: nodegroup
    - firewall.mail
    - mail-opt-out

  'hg':
    - match: nodegroup
    - firewall.rs-lb-backend

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

  'planet':
    - match: nodegroup
    - planet
    - firewall.http

  'salt-master':
    - match: nodegroup
    - firewall.salt
    - pebble
    - firewall.postgresql
    - postgresql.server
    - postgres.databases
    - secrets.postgresql-admin
    - secrets.postgresql-users.all

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

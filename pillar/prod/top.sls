base:
  '*':
    - consul
    - firewall.consul
    - networking
    - roles
    - secrets.system-mail
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
    - firewall.rs-lb-backend
    - groups.docs
    - secrets.backup.docs

  'downloads':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.downloads
    - secrets.backup.downloads

  'elasticsearch':
    - match: nodegroup
    - firewall.elasticsearch

  'hg':
    - match: nodegroup
    - firewall.rs-lb-backend
    - secrets.backup.hg
    - secrets.ssh.hg

  'jython-web':
    - match: nodegroup
    - secrets.backup.jython-web
    - groups.jython
    - firewall.http

  'loadbalancer':
    - match: nodegroup
    - haproxy
    - firewall.loadbalancer
    - ocsp
    - secrets.fastly
    - secrets.tls.certs.loadbalancer

  'monitoring':
    - match: nodegroup
    - firewall.monitoring
    - secrets.postgresql-users.monitoring
    - secrets.monitoring.server

  'packages':
    - match: nodegroup
    - aptly.packages
    - secrets.aptly
    - secrets.backup.packages

  'planet':
    - match: nodegroup
    - planet
    - firewall.http

  'postgresql':
    - match: nodegroup
    - firewall.postgresql
    - postgresql.server
    - secrets.wal-e

  'postgresql-primary':
    - match: nodegroup
    - secrets.postgresql-users.all

  'postgresql-replica':
    - match: nodegroup
    - secrets.postgresql-users.replica

  'pydotorg':
    - match: nodegroup
    - firewall.rs-lb-backend
    - secrets.pydotorg
    - secrets.pydotorg-mail

  'pydotorg-staging':
    - match: nodegroup
    - pydotorg.staging
    - secrets.postgresql-users.pydotorg-staging

  'pydotorg-prod':
    - match: nodegroup
    - pydotorg.prod
    - secrets.postgresql-users.pydotorg-prod

  'pythontest':
    - match: nodegroup
    - firewall.http

  'salt-master':
    - match: nodegroup
    - firewall.salt
    - secrets.dyn

  'speed-web':
    - match: nodegroup
    - firewall.rs-lb-backend

  'tracker':
    - match: nodegroup
    - secrets.postgresql-users.tracker

  'web-pypa':
    - match: nodegroup
    - firewall.rs-lb-backend

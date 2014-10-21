base:
  '*':
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

  'salt-master':
    - match: nodegroup
    - firewall.salt

  'tracker':
    - match: nodegroup
    - secrets.postgresql-users.tracker

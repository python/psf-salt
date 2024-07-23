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
    - postgres.clusters
    - secrets.monitoring.datadog

  'backup-server':
    - match: nodegroup
    - backup.server

  'bugs':
    - match: nodegroup
    - firewall.bugs
    - mail-opt-out
    - secrets.bugs
    - backup.bugs
    - secrets.backup.bugs
    - bugs

  'buildbot':
    - match: nodegroup
    - firewall.buildbot
    - secrets.postgresql-users.buildbot
    - backup.buildbot
    - secrets.backup.buildbot

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
    - backup.docs
    - secrets.backup.docs

  'downloads':
    - match: nodegroup
    - firewall.rs-lb-backend
    - groups.downloads
    - backup.downloads
    - secrets.backup.downloads

  'gnumailman':
    - match: nodegroup
    - firewall.mail
    - mail-opt-out
    - backup.gnumailman
    - secrets.backup.gnumailman

  'hg':
    - match: nodegroup
    - firewall.rs-lb-backend
    - firewall.hg
    - backup.hg
    - secrets.backup.hg
    - secrets.ssh.hg

  'loadbalancer':
    - match: nodegroup
    - haproxy
    - firewall.loadbalancer
    - ocsp
    - secrets.fastly
    - secrets.tls.certs.loadbalancer
    - bugs

  'mail':
    - match: nodegroup
    - firewall.mail
    - backup.mail
    - secrets.backup.mail
    - groups.mail
    - mail-opt-out

  'moin':
    - match: nodegroup
    - mail-opt-out
    - firewall.rs-lb-backend
    - backup.moin
    - secrets.backup.moin

  'planet':
    - match: nodegroup
    - planet
    - firewall.http
    - firewall.planet

  'pythontest':
    - match: nodegroup
    - firewall.http
    - firewall.ftp
    - firewall.snakebite

  'salt-master':
    - match: nodegroup
    - firewall.salt
    - postgres.databases
    - secrets.aws
    - secrets.postgresql-admin
    - secrets.postgresql-users.all

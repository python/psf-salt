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

  'discourse':
    - match: nodegroup
    - firewall.discourse
    - discourse
    - postgresql.server
    - secrets.discourse
    - secrets.postgresql-users.discourse

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
    - secrets.fastly

  'pydotorg-staging':
    - match: nodegroup
    - secrets.postgresql-users.pydotorg-staging
    - secrets.sentry.pydotorg-staging

  'pydotorg-staging.iad1.psf.io':
    - pydotorg.staging

  'pydotorg-staging2.iad1.psf.io':
    - pydotorg.staging2

  'pydotorg-prod':
    - match: nodegroup
    - pydotorg.prod
    - secrets.postgresql-users.pydotorg-prod
    - secrets.sentry.pydotorg-prod

  'pycon':
    - match: nodegroup
    - firewall.http

  'pycon-prod':
    - match: nodegroup
    - pycon.prod
    - secrets.postgresql-users.pycon-prod
    - secrets.pycon.prod
    - secrets.backup.pycon.prod

  'pycon-staging':
    - match: nodegroup
    - pycon.staging
    - secrets.postgresql-users.pycon-staging
    - secrets.pycon.staging
    - secrets.backup.pycon.staging

  'pythontest':
    - match: nodegroup
    - firewall.http

  'salt-master':
    - match: nodegroup
    - firewall.salt
    - secrets.dyn

  'slack':
    - match: nodegroup
    - secrets.slack

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

  'mailman':
    - match: nodegroup
    - firewall.mailman
    - secrets.mail-opt-out

  'mail':
    - match: nodegroup
    - firewall.mail
    - secrets.mail-opt-out
    - secrets.backup.mail
    - groups.mail

  'linehaul':
      - match: nodegroup
      - firewall.linehaul
      - secrets.pypi.linehaul
      - pypi.linehaul

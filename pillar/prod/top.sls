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
    - secrets.monitoring.datadog

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
    - secrets.docs
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

  'loadbalancer':
    - match: nodegroup
    - haproxy
    - firewall.loadbalancer
    - ocsp
    - secrets.fastly
    - secrets.tls.certs.loadbalancer

  'web-pypa':
    - match: nodegroup
    - firewall.rs-lb-backend

  'salt-master':
    - match: nodegroup
    - firewall.salt
    - secrets.dyn

consul:
  bootstrap:
    vagrant:
      - salt-master.vagrant.psf.io
      - consul.vagrant.psf.io
      - none.vagrant.psf.io
  acl:
    default: deny
    dc: vagrant
    down: extend-cache
    ttl: 30s
  dcs:
    vagrant: salt-master.vagrant.psf.io
  external:
    - datacenter: vagrant
      node: pythonanywhere
      address: www.pythonanywhere.com
      service: console
      port: 443

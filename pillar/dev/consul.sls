consul:
  bootstrap:
    vagrant:
      - consul.vagrant.psf.io
  acl:
    default: deny
    dc: vagrant
    down: extend-cache
    ttl: 30s
  dcs:
    vagrant: consul.vagrant.psf.io
  external:
    - datacenter: vagrant
      node: pythonanywhere
      address: www.pythonanywhere.com
      service: console
      port: 443

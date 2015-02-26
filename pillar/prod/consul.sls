consul:
  bootstrap:
    iad1:
      - consul0.iad1.psf.io
      - consul1.iad1.psf.io
      - consul2.iad1.psf.io
  acl:
    default: allow
    dc: iad1
    down: extend-cache
    ttl: 30s
  dcs:
    iad1: consul*.iad1.psf.io
  external:
    - datacenter: iad1
      node: pythonanywhere
      address: www.pythonanywhere.com
      service: console
      port: 443

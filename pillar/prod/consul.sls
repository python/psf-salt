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
  # Currently there is something wrong with consul 0.5.0 and we cannot register
  # external services without setting the default acl to allow. So if you add
  # something here you need to set the default acl to allow, and uncomment the
  # code at the bottom of salt/consul/init.sls.
  external:
    - datacenter: iad1
      node: pythonanywhere
      address: www.pythonanywhere.com
      service: console
      port: 443
    - datacenter: iad1
      node: evote.python.org
      address: evote.python.org
      service: evote
      port: 9000
    - datacenter: iad1
      node: pycon-slides
      address: 104.130.170.116
      service: pycon-slides
      port: 8812

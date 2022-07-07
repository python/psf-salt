consul:
  bootstrap:
    nyc1:
      - consul0.nyc1.psf.io
      - consul1.nyc1.psf.io
      - consul2.nyc1.psf.io
      - consul-a.nyc1.psf.io
      - consul-b.nyc1.psf.io
      - consul-c.nyc1.psf.io
  acl:
    default: deny
    dc: nyc1
    down: extend-cache
    ttl: 30s
  dcs:
    nyc1: consul*.nyc1.psf.io
  # Currently, there is something wrong with consul 0.5.0 and we cannot register
  # external services without setting the default acl to allow. So if you add
  # something here you need to set the default acl to allow, and uncomment the
  # code at the bottom of salt/consul/init.sls.
  external:
    - datacenter: nyc1
      node: pythonanywhere
      address: www.pythonanywhere.com
      service: console
      port: 443

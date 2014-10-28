consul:
  acl:
    default: deny
    dc: iad1
    down: extend-cache
    ttl: 30s
  bootstrap-expect: 3
  dcs:
    - iad1
  external:
    - datacenter: iad1
      node: pythonanywhere
      address: www.pythonanywhere.com
      service: console
      port: 443

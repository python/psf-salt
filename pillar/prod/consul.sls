consul:
  acl:
    default: deny
    dc: iad
    down: extend-cache
    ttl: 30s
  bootstrap-expect: 3
  dcs:
    - iad
  external:
    - datacenter: iad
      node: pythonanywhere
      address: www.pythonanywhere.com
      service: console
      port: 443

consul:
  acl:
    default: deny
    dc: rax-iad
    down: extend-cache
    ttl: 30s
  bootstrap-expect: 3
  dcs:
    - rax-iad
  external:
    - datacenter: rax-iad
      node: pythonanywhere
      address: www.pythonanywhere.com
      service: console
      port: 443

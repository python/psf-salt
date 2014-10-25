consul:
  acl:
    default: deny
    dc: rax-iad
    down: extend-cache
    ttl: 30
  bootstrap-expect: 3
  dcs:
    - rax-iad

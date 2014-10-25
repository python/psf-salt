consul:
  acl:
    default: deny
    dc: vagrant
    down: extend-cache
    ttl: 30s
  bootstrap-expect: 1
  dcs:
    - vagrant

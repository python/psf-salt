psf_internal_network: &psf_internal_network 10.132.0.0/16


mine_functions:
  psf_dc:
    - mine_function: pillar.get
    - dc

  psf_internal:
    mine_function: network.ip_addrs
    cidr: *psf_internal_network

  ipv4_addrs:
    mine_function: network.ip_addrs

  ipv6_addrs:
    mine_function: network.ip_addrs6

  public_ipv4:
    mine_function: network.ip_addrs
    type: 'public'

  osfinger:
    - mine_function: grains.get
    - osfinger

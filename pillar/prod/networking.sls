psf_internal_network: &psf_internal_network 10.132.0.0/16


mine_functions:
  psf_internal:
    mine_function: network.ip_addrs
    cidr: *psf_internal_network

  ipv4_addrs:
    mine_function: network.ip_addrs

  ipv6_addrs:
    mine_function: network.ip_addrs6

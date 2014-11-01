psf_internal_network: &psf_internal_network 192.168.50.0/24
pypi_internal_network: &pypi_internal_network 192.168.60.0/24
rackspace_iad_service_net: &rackspace_iad_service_net 10.0.0.0/8


mine_functions:
  psf_internal:
    - mine_function: network.ip_addrs
    - cidr: *psf_internal_network

  ip_picker.public_addresses: []

psf_internal_network: &psf_internal_network 192.168.50.0/24
pypi_internal_network: &pypi_internal_network 192.168.60.0/24
vpn0_internal_network: &vpn0_internal_network 10.8.0.0/24
vpn1_internal_network: &vpn1_internal_network 10.9.0.0/24
rackspace_iad_service_net: &rackspace_iad_service_net 10.0.0.0/8

psf_internal_vpn_gateway: null
pypi_internal_vpn_gateway: null


mine_functions:
  minealiases.psf_internal:
    cidr: 192.168.50.0/24
  minealiases.pypi_internal:
    cidr: 192.168.60.0/24

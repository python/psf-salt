{% include "networking.sls" %}

firewall:
  http:
    port: 80

  carbon-line-receiver:
    port: 2003
    source: *psf_internal_network

  carbon-pickle-receiver:
    port: 2004
    source: *psf_internal_network

  carbon-line-receiver-relay:
    port: 2013
    source: *psf_internal_network

  carbon-pickle-receiver-relay:
    port: 2014
    source: *psf_internal_network

  carbon-line-receiver-aggregator:
    port: 2023
    source: *psf_internal_network

  carbon-pickle-receiver-aggregator:
    port: 2024
    source: *psf_internal_network

  carbon-cache-query:
    port: 7002
    source: *psf_internal_network

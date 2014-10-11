{% include "networking.sls" %}

firewall:

  salt_master_psf_internal:
    port: 4505:4506
    source: *psf_internal_network

  salt_master_remote_backup:
    port: 4505:4506
    source: 162.209.2.92

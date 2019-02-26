{% include "networking.sls" %}

firewall:

  salt_master_psf_internal:
    port: 4505:4506
    source: *psf_internal_network

  salt_master_remote_backup:
    port: 4505:4506
    source: 134.209.1.8

  salt_master_pythontest:
    port: 4505:4506
    source: 159.89.235.38

{% include "networking.sls" %}

firewall:

  salt_master_psf_internal:
    port: 4505:4506
    source: *psf_internal_network

  salt_master_remote_backup:
    port: 4505:4506
    source: 162.209.2.92

  salt_master_mail_ams1:
    port: 4505:4506
    source: 178.62.142.198

{% include "networking.sls" %}

firewall:

  salt_master_psf_internal:
    port: 4505:4506
    source: *psf_internal_network

  salt_master_remote_backup:
    port: 4505:4506
    source: 162.209.2.92

  salt_master_mail1_ams1:
    port: 4505:4506
    source: 188.166.95.178

  salt_master_pythontest_nyc1:
    port: 4505:4506
    source: 104.236.16.9

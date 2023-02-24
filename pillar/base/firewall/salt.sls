{% include "networking.sls" %}

firewall:

  salt_master_letsencrypt_and_publish_files:
    port: 9000:9001
    source: *psf_internal_network

  salt_master_bugs_ams1:
    port: 4505:4506
    source: 188.166.48.69

  salt_master_mail1_ams1:
    port: 4505:4506
    source: 188.166.95.178

  salt_master_psf_internal:
    port: 4505:4506
    source: *psf_internal_network

  salt_master_pythontest:
    port: 4505:4506
    source: 159.89.235.38

  salt_master_remote_backup:
    port: 4505:4506
    source: 138.68.57.99

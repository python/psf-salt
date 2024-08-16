{% include "networking.sls" %}

firewall:

  salt_master_letsencrypt_and_publish_files:
    port: 9000:9001
    source: *psf_internal_network

  salt_master_psf_internal:
    port: 4505:4506
    source: *psf_internal_network

  {# NOTE: These hosts do not run in the primary DC (NYC1) so firewall holes are poked for access #}
  salt_master_pythontest:
    port: 4505:4506
    source: 68.183.26.59

  salt_master_backup_server:
    port: 4505:4506
    source: 159.89.159.168

  salt_master_remote_backup:
    port: 4505:4506
    source: 138.68.57.99

  salt_master_mail1_ams1:
    port: 4505:4506
    source: 188.166.95.178

  {# TODO: this is used in development environments #}
  salt_master_pebble:
    port: 14000
    source: *psf_internal_network

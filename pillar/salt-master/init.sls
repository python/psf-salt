
firewall:
  salt_master_psf_internal:
    port: 4505:4506
    source: 192.168.5.0/24
  salt_master_remote_backup:
    port: 4505:4506
    source: 162.209.2.92

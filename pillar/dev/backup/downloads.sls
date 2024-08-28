backup:
  directories:
    python-downloads:
      source_directory: /srv/
      target_host: backup-server.vagrant.psf.io
      target_directory: /backup/python-downloads
      target_user: downloads
      frequency: daily
      increment_retention: 365D
      user: root

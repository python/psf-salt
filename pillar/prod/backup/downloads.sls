backup:
  directories:
    python-downloads:
      source_directory: /srv/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/python-downloads
      target_user: downloads
      frequency: daily
      user: root

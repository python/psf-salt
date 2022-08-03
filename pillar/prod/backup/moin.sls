backup:
  directories:
    moin:
      source_directory: /data/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/moin
      target_user: moin
      frequency: daily
      user: root

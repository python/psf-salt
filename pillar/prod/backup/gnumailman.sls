backup:
  directories:
    gnumailman-data:
      source_directory: /backup/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/gnumailman
      target_user: gnumailman
      frequency: hourly
      user: root

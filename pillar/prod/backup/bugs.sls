backup:
  directories:
    python-bugs-data:
      source_directory: /backup/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/python-bugs
      target_user: python-bugs
      frequency: hourly
      user: root

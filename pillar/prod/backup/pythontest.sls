backup:
  directories:
    pythontest:
      source_directory: /srv/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/pythontest
      target_user: www-data
      frequency: daily
      user: www-data

backup:
  directories:
    python-hg:
      source_directory: /srv/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/python-hg
      target_user: hg
      frequency: daily
      user: root

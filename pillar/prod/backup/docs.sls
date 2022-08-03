backup:
  directories:
    python-docs:
      source_directory: /srv/
      exclude:
        - /srv/docsbuild
      target_host: backup.sfo1.psf.io
      target_directory: /backup/python-docs
      target_user: python-docs
      frequency: daily
      user: root

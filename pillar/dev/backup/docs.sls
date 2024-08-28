backup:
  directories:
    python-docs:
      source_directory: /srv/
      exclude:
        - /srv/docsbuild
      target_host: backup-server.vagrant.psf.io
      target_directory: /backup/python-docs
      target_user: python-docs
      frequency: daily
      increment_retention: 7D
      user: root

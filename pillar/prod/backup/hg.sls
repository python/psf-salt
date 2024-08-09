backup:
  directories:
    python-hg:
      source_directory: /srv/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/python-hg
      target_user: hg
      frequency: daily
      user: root
    hg-mercurial-static:
      source_directory: /usr/share/mercurial/templates/static/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/hg-mercurial-static
      target_user: root
      frequency: daily
      user: root
    hg-svn-config:
      source_directory: /etc/apache2/svn_config/
      target_host: backup.sfo1.psf.io
      target_directory: /backup/hg-svn-config
      target_user: root
      frequency: daily
      user: root

backup-server:
  volumes:
    /dev/sda: /backup
  backups:
    docs:
      directory: /backup/python-docs
      user: python-docs
      increment_retention: 7D
    downloads:
      directory: /backup/python-downloads
      user: downloads
      increment_retention: 365D
    mail-python-org:
      directory: /backup/mail-python-org
      user: mail-python-org
      increment_retention: 15D
    python-bugs:
      directory: /backup/python-bugs
      user: python-bugs
      increment_retention: 30D
    gnumailman-data:
      directory: /backup/gnumailman-data
      user: gnumailman
      increment_retention: 90D
    hg:
      directory: /backup/python-hg
      user: hg
      increment_retention: 90D
    hg-mercurial-static:
      directory: /backup/hg-mercurial-static
      user: hg
      increment_retention: 90D
    hg-svn-config:
      directory: /backup/hg-svn-config
      user: hg
      increment_retention: 90D
    buildbot:
      directory: /backup/buildbot
      user: buildbot
      increment_retention: 90D
    moin:
      directory: /backup/moin
      user: moin
      increment_retention: 90D

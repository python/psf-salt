backup:
  directories:
    mail-python-org:
      source_directory: /
      exclude:
        - /boot
        - /dev
        - /media
        - /mnt
        - /proc
        - /sys
        - /tmp
        - /var/spool/postfix
      target_host: backup.sfo1.psf.io
      target_directory: /backup/mail-python-org
      target_user: mail-python-org
      frequency: daily
      user: root

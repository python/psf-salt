unattended-upgrades:
  pkg.installed

/etc/apt/apt.conf.d/20auto-upgrades:
  file.managed:
    - source: salt://auto-security/config/20auto-upgrades
    - user: root
    - group: root
    - mode: 644

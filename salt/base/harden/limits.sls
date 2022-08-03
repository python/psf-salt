/etc/security/limits.d/10.hardcore.conf:
  file.managed:
    - source: salt://base/harden/config/limits.conf
    - user: root
    - group: root
    - mode: "0440"

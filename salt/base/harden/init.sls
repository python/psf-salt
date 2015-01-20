/etc/security/limits.d/10.hardcore.conf:
  file.managed:
    - source: salt://base/harden/config/limits.conf
    - user: root
    - group: root
    - mode: 440


/etc/login.defs:
  file.managed:
    - source: salt://base/harden/config/login.defs.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 444

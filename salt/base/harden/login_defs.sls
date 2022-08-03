/etc/login.defs:
  file.managed:
    - source: salt://base/harden/config/login.defs.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0444"

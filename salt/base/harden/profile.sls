/etc/profile.d/softcore.sh:
  file.managed:
    - source: salt://base/harden/config/profile.sh
    - user: root
    - group: root
    - mode: "0755"

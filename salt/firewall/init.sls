/etc/iptables/rules.v4:
  file.managed:
    - source: salt://firewall/config/iptables.jinja
    - user: root
    - group: root
    - mode: 600
    - template: jinja
    - require:
      - pkg: iptables-persistent

iptables-persistent:
  pkg.installed: []
  service.enabled:
    - watch:
      - file: /etc/iptables/rules.v4

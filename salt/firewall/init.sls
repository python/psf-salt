/etc/iptables:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/etc/iptables/rules.v4:
  file.managed:
    - source: salt://firewall/config/iptables.jinja
    - user: root
    - group: root
    - mode: 600
    - template: jinja
    - require:
      - pkg: iptables-persistent


/etc/iptables/rules.v6:
  file.managed:
    - source: salt://firewall/config/ip6tables.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 600
    - require:
      - pkg: iptables-persistent


iptables-persistent:
  pkg.installed:
    - pkgs:
      - iptables-persistent
      - netfilter-persistent

  service.enabled:
    - name: netfilter-persistent
    - require:
      - file: /etc/iptables/rules.v4
      - file: /etc/iptables/rules.v6

  module.watch:
    - name: service.restart
    - m_name: netfilter-persistent
    - watch:
      - file: /etc/iptables/rules.v4
      - file: /etc/iptables/rules.v6

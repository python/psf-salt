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
    {% if grains["oscodename"] == "xenial" %}
    - name: netfilter-persistent
    {% else %}
    - name: iptables-persistent
    {% endif %}

  service.enabled:
    {% if grains["oscodename"] == "xenial" %}
    - name: netfilter-persistent
    {% else %}
    - name: iptables-persistent
    {% endif %}
    - require:
      - file: /etc/iptables/rules.v4
      - file: /etc/iptables/rules.v6

  module.watch:
    - name: service.restart
    {% if grains["oscodename"] == "xenial" %}
    - m_name: netfilter-persistent
    {% else %}
    - m_name: iptables-persistent
    {% endif %}
    - watch:
      - file: /etc/iptables/rules.v4
      - file: /etc/iptables/rules.v6

/etc/iptables:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"

/etc/iptables/rules.v4:
  file.managed:
    - source: salt://firewall/config/iptables.jinja
    - user: root
    - group: root
    - mode: "0600"
    - template: jinja
    - require:
      - pkg: iptables-persistent


/etc/iptables/rules.v6:
  file.managed:
    - source: salt://firewall/config/ip6tables.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0600"
    - require:
      - pkg: iptables-persistent


iptables-persistent:
  pkg.installed:
    - pkgs:
      {% if grains["oscodename"] == "trusty" %}
      - iptables-persistent
      {% else %}
      - iptables-persistent
      - netfilter-persistent
      {% endif %}

  service.enabled:
    {% if grains["oscodename"] == "trusty" %}
    - name: iptables-persistent
    {% else %}
    - name: netfilter-persistent
    {% endif %}
    - require:
      - file: /etc/iptables/rules.v4
      - file: /etc/iptables/rules.v6

  module.watch:
    - name: service.restart
    {% if grains["oscodename"] == "trusty" %}
    - m_name: iptables-persistent
    {% else %}
    - m_name: netfilter-persistent
    {% endif %}
    - watch:
      - file: /etc/iptables/rules.v4
      - file: /etc/iptables/rules.v6

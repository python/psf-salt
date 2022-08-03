ssl-cert:
  pkg.installed


{% for name in salt["pillar.get"]("tls:ca", {}) %}  # " Syntax Hack
/etc/ssl/certs/{{ name }}.pem:
  file.managed:
    - contents_pillar: tls:ca:{{ name }}
    - user: root
    - group: ssl-cert
    - mode: "0644"
    - require:
      - pkg: ssl-cert
{% endfor %}


{% for name in salt["pillar.get"]("tls:certs", {}) %}  # " Syntax Hack
/etc/ssl/private/{{ name }}.pem:
  file.managed:
    - contents_pillar: tls:certs:{{ name }}
    - user: root
    - group: ssl-cert
    - mode: "0640"
    - show_diff: False
    - require:
      - pkg: ssl-cert
{% endfor %}

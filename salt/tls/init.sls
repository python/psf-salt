ssl-cert:
  pkg.installed


{% for name in salt["pillar.get"]("tls:cas", {}) %}  # " Syntax Hack
/etc/ssl/certs/{{ name }}.pem:
  file.managed:
    - contents_pillar: tls:cas:{{ name }}
    - user: root
    - group: ssl-cert
    - mode: 644
    - require:
      - pkg: ssl-cert
{% endfor %}


{% for name in salt["pillar.get"]("tls:certs", {}) %}  # " Syntax Hack
/etc/ssl/private/{{ name }}.pem:
  file.managed:
    - contents_pillar: tls:certs:{{ name }}
    - user: root
    - group: ssl-cert
    - mode: 640
    - show_diff: False
    - require:
      - pkg: ssl-cert
{% endfor %}

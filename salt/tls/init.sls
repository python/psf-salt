ssl-cert:
  pkg.installed


/etc/ssl/certs/{{ pillar["tls"]["ca"]["name"] }}.pem:
  file.managed:
    - contents_pillar: tls:ca:cert
    - user: root
    - group: ssl-cert
    - mode: 644
    - require:
      - pkg: ssl-cert


{% for name in salt["pillar.get"]("tls:certs", {}) %}  # " Syntax Hack
/etc/ssl/private/{{ name }}.pem:
  file.managed:
    - contents_pillar: tls:certs:{{ name }}
    - user: root
    - group: ssl-cert
    - mode: 640
    - require:
      - pkg: ssl-cert
{% endfor %}

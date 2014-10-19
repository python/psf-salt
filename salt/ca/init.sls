ssl-cert:
  pkg.installed


/etc/ssl/certs/{{ pillar["ca"]["root"]["name"] }}.pem:
  file.managed:
    - contents_pillar: ca:root:certificate
    - user: root
    - group: ssl-cert
    - mode: 644
    - require:
      - pkg: ssl-cert


{% for name in salt["pillar.get"]("ca:certificates", {}) %}  # " Syntax Hack
/etc/ssl/private/{{ name }}.pem:
  file.managed:
    - contents_pillar: ca:certificates:{{ name }}
    - user: root
    - group: ssl-cert
    - mode: 640
    - require:
      - pkg: ssl-cert
{% endfor %}

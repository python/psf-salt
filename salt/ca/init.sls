ssl-cert:
  pkg.installed

{% for name in salt["pillar.get"]("ca:certificates", {}) %}  # " Syntax Hack
/etc/ssl/certs/{{ name }}.pem:
  file.managed:
    - contents_pillar: ca:certificates:{{ name }}:crt
    - user: root
    - group: ssl-cert
    - mode: 644
    - require:
      - pkg: ssl-cert

{% if salt["pillar.get"]("ca:certificates:" + name + ":key") %} # " Syntax Hack
/etc/ssl/private/{{ name }}.key:
  file.managed:
    - contents_pillar: ca:certificates:{{ name }}:key
    - user: root
    - group: ssl-cert
    - mode: 640
    - require:
      - pkg: ssl-cert
{% endif %}
{% endfor %}

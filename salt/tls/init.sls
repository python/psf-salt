include:
  - .pebble
  - .lego

ssl-cert:
  pkg.installed

certbot:
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

/usr/local/share/ca-certificates/{{ name }}.crt:
  file.managed:
    - contents_pillar: tls:ca:{{ name }}
    - user: root
    - group: ssl-cert
    - mode: "0644"
    - require:
      - pkg: ssl-cert
{% endfor %}

/usr/sbin/update-ca-certificates:
  cmd.wait:
    - watch:
      - file: /usr/local/share/ca-certificates/*.crt

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

{% if salt["match.compound"](pillar["roles"]["salt-master"]["pattern"]) %}
# Process ACME certificates
{% for domain, domain_config in salt["pillar.get"]("tls:acme_certs", {}).items() %}
{{ domain }}:
  acme.cert:
    - email: infrastructure-staff@python.org
    - webroot: /etc/lego
    - renew: 14
    {% if domain_config.get('aliases') %}
    - aliases:
      {% for alias in domain_config.get('aliases', []) %}
      - {{ alias }}
      {% endfor %}
    {% endif %}
    {% if pillar["dc"] == "vagrant" %}
    - server: https://salt-master.vagrant.psf.io:14000/dir
    {% endif %}
    {% if domain_config.get('validation') == "dns" %}
    - dns_plugin: {{ domain_config.get('dns_plugin') }}
    - dns_plugin_credentials: {{ domain_config.get('dns_plugin_credentials') }}
    {% else %}
    - require:
      - sls: tls.lego
      - pkg: certbot
    {% endif %}
{% endfor %}
{% endif %}
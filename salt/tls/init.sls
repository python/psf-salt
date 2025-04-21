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
# HTTP-validated domains
{% for domain in [
    'pypa.io',
    'www.pycon.org',
    'speed.pypy.org',
    'salt-public.psf.io',
    'planetpython.org',
    'bugs.python.org'
] %}
{{ domain }}:
  acme.cert:
    - email: infrastructure-staff@python.org
    - webroot: /etc/lego
    - renew: 14
    {% if pillar["dc"] == "vagrant" %}
    - server: https://salt-master.vagrant.psf.io:14000/dir
    {% endif %}
    - require:
      - sls: tls.lego
{% endfor %}

# DNS-validated domains
# dns plugins do not exist yet for route53 & gandi
{#star.python.org:#}
{#  acme.cert:#}
{#    - aliases:#}
{#      - python.org#}
{#    - email: infrastructure-staff@python.org#}
{##    - dns_plugin: route53#}
{##    - dns_plugin_credentials: route53.python#}
{#    - renew: 14#}
{#    - server: https://localhost:14000/dir#}
{#    - require:#}
{#      - pkg: certbot#}
{#
- sls: tls.lego
{#star.pycon.org:#}
{#  acme.cert:#}
{#    - aliases:#}
{#      - pycon.org#}
{#    - email: infrastructure-staff@python.org#}
{##    - dns_plugin: route53#}
{##    - dns_plugin_credentials: route53.pycon#}
{#    - renew: 14#}
{#    - server: https://localhost:14000/dir#}
{#    - require:#}
{#      - sls: tls.lego#}

{#star.pyfound.org:#}
{#  acme.cert:#}
{#    - aliases:#}
{#      - pyfound.org#}
{#    - email: infrastructure-staff@python.org#}
{##    - dns_plugin: gandiv5#}
{##    - dns_plugin_credentials: gandi#}
{#    - renew: 14#}
{#    - require:#}
{#      - sls: tls.lego#}

# Multi-domain certificates
{#jython.org:#}
{#  acme.cert:#}
{#    - aliases:#}
{#      - www.jython.net#}
{#      - jython.net#}
{#      - www.jython.com#}
{#      - jython.com#}
{#    - email: infrastructure-staff@python.org#}
{#    - webroot: /etc/lego#}
{#    - renew: 14#}
{#    - require:#}
{#      - sls: tls.lego#}
{##}
{#bugs.python.org-multi:#}
{#  acme.cert:#}
{#    - name: bugs.python.org#}
{#    - aliases:#}
{#      - bugs.jython.org#}
{#      - issues.roundup-tracker.org#}
{#      - mail.roundup-tracker.org#}
{#    - email: infrastructure-staff@python.org#}
{#    - webroot: /etc/lego#}
{#    - renew: 14#}
{#    - require:#}
{#      - sls: tls.lego#}
{% endif %}
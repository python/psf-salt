{% if pillar["dc"] in pillar["consul"]["dcs"] %}

{% set is_server = salt["match.compound"](pillar["roles"]["consul"]) %}


consul:
  pkg.installed: []

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul
      {% if is_server %}
      - user: consul
      {% endif %}
    - watch:
      - file: /etc/consul.d/*.json
      - file: /etc/ssl/certs/PSF_CA.pem
      {% if is_server %}
      - file: /etc/ssl/private/consul.psf.io.pem
      {% endif %}

  {% if is_server %}
  user.present:
    - groups:
      - ssl-cert
    - require:
      - pkg: consul
      - pkg: ssl-cert
  {% endif %}


/etc/consul.d/base.json:
  file.managed:
    - source: salt://consul/etc/base.json.jinja
    - template: jinja
    - user: root
    - group: root
    - require:
      - pkg: consul


{% if is_server %}
/etc/consul.d/server.json:
  file.managed:
    - source: salt://consul/etc/server.json.jinja
    - template: jinja
    - user: root
    - group: root
    - require:
      - pkg: consul
{% endif %}


/etc/consul.d/encrypt.json:
  file.managed:
    - source: salt://consul/etc/encrypt.json.jinja
    - template: jinja
    - user: root
    - group: root
    - show_diff: False
    - require:
      - pkg: consul


# Note: We're going to use the salt master to "introduce" us, this means we're
#       going to assume that each dc with consul in it will have it's own
#       salt master. This is fine right now as we're only running consul in
#       iad1. If this changes we might need to re-evaluate this, perhaps to
#       use salt syndic.
/etc/consul.d/join.json:
  file.managed:
    - source: salt://consul/etc/join.json.jinja
    - template: jinja
    - user: root
    - group: root
    - require:
      - pkg: consul


consul-template:
  pkg.installed: []

  cmd.wait:
    - name: consul-template -config /etc/consul-template.d -once
    - require:
      - pkg: consul-template
      - service: consul
    - watch:
      - file: /etc/consul-template.d/*.json
      - file: /usr/share/consul-template/templates/*

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul-template
      - service: consul
    - watch:
      - file: /etc/consul-template.d/*.json
      - file: /usr/share/consul-template/templates/*


/etc/consul-template.d/base.json:
  file.managed:
    - source: salt://consul/etc/consul-template/base.json
    - user: root
    - group: root
    - mode: 644

{% endif %}


{% for service in pillar["consul"].get("external", []) %}
consul-external-{{ service.service }}:
  consul.external_service:
    - name: {{ service.service }}
    - datacenter: {{ service.datacenter }}
    - node: {{ service.node }}
    - address: {{ service.address }}
    - port: {{ service.port }}
    - require:
      - pkg: python-requests
{% endfor %}

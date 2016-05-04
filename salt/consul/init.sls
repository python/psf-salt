{% if pillar["dc"] in pillar["consul"]["dcs"] %}

{% set is_server = salt["match.compound"](pillar["roles"]["consul"]) %}


consul:
  pkg.installed: []

  {% if grains["oscodename"] == "xenial" %}
  file.managed:
    - name: /lib/systemd/system/consul.service
    - source: salt://consul/init/consul.service
  {% endif %}

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
      {% if grains["oscodename"] == "xenial" %}
      - file: consul
      {% endif %}
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
    - group: consul
    - require:
      - pkg: consul


{% if is_server %}
/etc/consul.d/server.json:
  file.managed:
    - source: salt://consul/etc/server.json.jinja
    - template: jinja
    - user: root
    - group: consul
    - require:
      - pkg: consul
{% else %}
/etc/consul.d/server.json:
  file.absent
{% endif %}


{% if is_server and pillar["dc"] == pillar["consul"]["acl"]["dc"] %}
/etc/consul.d/acl-master.json:
  file.managed:
    - source: salt://consul/etc/acl-master.json.jinja
    - template: jinja
    - user: root
    - group: consul
    - mode: 640
    - show_diff: False
    - require:
      - pkg: consul
{% else %}
/etc/consul.d/acl-master.json:
  file.absent
{% endif %}


/etc/consul.d/acl.json:
  file.managed:
    - source: salt://consul/etc/acl.json.jinja
    - template: jinja
    - user: root
    - group: consul
    - mode: 640
    - show_diff: False
    - require:
      - pkg: consul


/etc/consul.d/encrypt.json:
  file.managed:
    - source: salt://consul/etc/encrypt.json.jinja
    - template: jinja
    - user: root
    - group: consul
    - mode: 640
    - show_diff: False
    - require:
      - pkg: consul


/etc/consul.d/join.json:
  file.managed:
    - source: salt://consul/etc/join.json.jinja
    - template: jinja
    - user: root
    - group: consul
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

  {% if grains["oscodename"] == "xenial" %}
  file.managed:
    - name: /lib/systemd/system/consul-template.service
    - source: salt://consul/init/consul-template.service
  {% endif %}

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul-template
      - service: consul
    - watch:
      {% if grains["oscodename"] == "xenial" %}
      - file: consul-template
      {% endif %}
      - file: /etc/consul-template.d/*.json
      - file: /usr/share/consul-template/templates/*


/etc/consul-template.d/base.json:
  file.managed:
    - source: salt://consul/etc/consul-template/base.json
    - user: root
    - group: root
    - mode: 644

{% endif %}


# {% for service in pillar["consul"].get("external", []) %}
# consul-external-{{ service.service }}:
#   consul.external_service:
#     - name: {{ service.service }}
#     - datacenter: {{ service.datacenter }}
#     - node: {{ service.node }}
#     - address: {{ service.address }}
#     - port: {{ service.port }}
#     - require:
#       - pkg: python-requests
# {% endfor %}

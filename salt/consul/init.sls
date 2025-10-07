{% if pillar["dc"] in pillar["consul"]["dcs"] %}

{% set is_server = salt["match.compound"](pillar["roles"]["consul"]["pattern"])  %}


consul-pkgs:
  pkg.installed:
    - pkgs:
      - consul

consul:
  file.managed:
    - name: /lib/systemd/system/consul.service
    - source: salt://consul/init/consul.service
    - mode: "0644"

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul-pkgs
      {% if is_server %}
      - user: consul
      {% endif %}
    - watch:
      - file: /etc/consul.d/*.json
      - file: /etc/ssl/certs/PSF_CA.pem
      - file: consul
      {% if is_server %}
      - file: /etc/ssl/private/consul.psf.io.pem
      {% endif %}

  {% if is_server %}
  user.present:
    - groups:
      - ssl-cert
    - require:
      - pkg: consul-pkgs
      - pkg: ssl-cert
  {% endif %}


/etc/consul.d/base.json:
  file.managed:
    - source: salt://consul/etc/base.json.jinja
    - template: jinja
    - user: root
    - group: consul
    - require:
      - pkg: consul-pkgs


{% if is_server %}
/etc/consul.d/server.json:
  file.managed:
    - source: salt://consul/etc/server.json.jinja
    - template: jinja
    - user: root
    - group: consul
    - require:
      - pkg: consul-pkgs
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
    - mode: "0640"
    - show_diff: False
    - require:
      - pkg: consul-pkgs
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
    - mode: "0640"
    - show_diff: False
    - require:
      - pkg: consul-pkgs


/etc/consul.d/encrypt.json:
  file.managed:
    - source: salt://consul/etc/encrypt.json.jinja
    - template: jinja
    - user: root
    - group: consul
    - mode: "0640"
    - show_diff: False
    - require:
      - pkg: consul-pkgs


/etc/consul.d/join.json:
  file.managed:
    - source: salt://consul/etc/join.json.jinja
    - template: jinja
    - user: root
    - group: consul
    - require:
      - pkg: consul-pkgs
{% endif %}


{% if pillar["dc"] in pillar["consul"]["dcs"] %}
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
      - service: consul
{% endfor %}
{% endif %}

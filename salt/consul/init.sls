{% if grains.dc in salt["pillar.get"]("consul:dcs") %} # "

{% set is_server = salt["match.compound"](salt["pillar.get"]("roles:consul", "")) %}  # "
{% set servers = (salt["mine.get"]("G@dc:" + grains.dc + " and " + salt["pillar.get"]("roles:consul", ""), "minealiases.psf_internal", expr_form="compound").values()) %} # "


consul:
  pkg.installed:
    - pkgs:
      - consul
      - consul-template

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


/etc/consul.d/join.json:
  file.managed:
    - source: salt://consul/etc/join.json.jinja
    - template: jinja
    - context:
        servers: {{ servers }}
    - user: root
    - group: root
    - require:
      - pkg: consul

{% endif %}

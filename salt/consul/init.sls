{% if grains.dc in salt["pillar.get"]("consul:dcs") %} # "

{% set is_server = salt["match.compound"](salt["pillar.get"]("roles:consul", "")) %}  # "
{% set servers = (salt["mine.get"]("G@dc:" + grains.dc + " and not " +  grains.id, "minealiases.psf_internal", expr_form="compound").values()) %} # "


consul:
  pkg:
    - installed

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul
      - user: consul
    - watch:
      - file: /etc/consul.d/base.json
      {% if is_server %}
      - file: /etc/consul.d/server.json
      - file: /etc/ssl/private/consul.psf.io.pem
      {% endif %}
      - file: /etc/consul.d/encrypt.json
      - file: /etc/ssl/certs/PSF_CA.pem

  {% if is_server %}
  user.present:
    - groups:
      - ssl-cert
    - require:
      - pkg: consul
      - pkg: ssl-cert
  {% endif %}

  {% if servers %}
  cmd.run:
    - name: consul join{% for addrs in servers %}{% for addr in addrs %} {{ addr }}{% endfor %}{% endfor %}
    - onlyif: consul members | wc -l | grep ^2$
    - require:
      - service: consul
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


{% endif %}

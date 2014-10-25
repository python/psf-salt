{% if grains.dc in salt["pillar.get"]("consul:dcs") %} # "

{% if salt["match.compound"](salt["pillar.get"]("roles:consul", "")) %}  # "
{% set consul_type = "server" %}
{% else %}
{% set consul_type = "client" %}
{% endif %}

{% set servers = (salt["mine.get"]("G@dc:" + grains.dc + " and not " +  grains.id, "minealiases.psf_internal", expr_form="compound").values()) %} # "


consul:
  pkg:
    - installed

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul
    - watch:
      - file: /etc/consul/consul.json
      - file: /etc/consul/conf.d/encrypt.json
      - file: /etc/consul/ca.pem
      - file: /etc/consul/cert.pem

  {% if servers %}
  cmd.run:
    - name: consul join{% for addrs in servers %}{% for addr in addrs %} {{ addr }}{% endfor %}{% endfor %}
    - onlyif: consul members | wc -l | grep ^2$
    - require:
      - service: consul
  {% endif %}


/etc/consul/ca.pem:
  file.managed:
    - contents_pillar: consul:encryption:ca
    - user: root
    - group: consul
    - mode: 644
    - require:
      - pkg: consul


/etc/consul/cert.pem:
  file.managed:
    - contents_pillar: consul:encryption:cert
    - user: root
    - group: consul
    - mode: 640
    - require:
      - pkg: consul


/etc/consul/consul.json:
  file.managed:
    - source: salt://consul/etc/{{ consul_type }}.json.jinja
    - template: jinja
    - user: root
    - group: root
    - require:
      - pkg: consul


/etc/consul/conf.d/encrypt.json:
  file.managed:
    - source: salt://consul/etc/encrypt.json.jinja
    - template: jinja
    - user: root
    - group: root
    - show_diff: False
    - require:
      - pkg: consul


{% endif %}

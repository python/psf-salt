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
    - reload: True
    - require:
      - pkg: consul
    - watch:
      - file: consul

  file.managed:
    - name: /etc/consul/consul.json
    - source: salt://consul/etc/{{ consul_type }}.json.jinja
    - template: jinja
    - user: root
    - group: root
    - require:
      - pkg: consul

  {% if servers %}
  cmd.run:
    - name: consul join{% for addrs in servers %}{% for addr in addrs %} {{ addr }}{% endfor %}{% endfor %}
    - onlyif: consul members | wc -l | grep ^2$
    - require:
      - service: consul
  {% endif %}

{% endif %}

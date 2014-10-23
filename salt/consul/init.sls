{% set consul_servers = (salt["mine.get"](salt["pillar.get"]("roles:consul", ""), "minealiases.psf_internal", expr_form="compound").items())|sort(attribute='0') %} # "
{% if salt["match.compound"](salt["pillar.get"]("roles:consul", "")) %}  # "
{% set consul_type = "server" %}
{% else %}
{% set consul_type = "client" %}
{% endif %}

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

  cmd.run:
    - name: consul join {{ grains.master }}
    - onlyif: consul members | wc -l | grep ^2$
    - require:
      - service: consul

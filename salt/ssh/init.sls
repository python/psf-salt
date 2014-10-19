{% set host_keys = salt["pillar.get"]("ssh_host_keys") %}
{% set sshd_config = salt["pillar.get"]("ssh:sshd_source", "salt://ssh/configs/sshd_config") %}


ssh:
  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/ssh/sshd_config
      {% for fn in host_keys %}
      - file: /etc/ssh/{{ fn }}
      {% endfor %}


/etc/ssh/sshd_config:
  file.managed:
    - source: {{ sshd_config }}
    - user: root
    - group: root
    - mode: 644


# If we have defined host keys for this server, then we want to drop them here
# instead of whatever is here by default.
{% for fn in host_keys %}
/etc/ssh/{{ fn }}:
  file.managed:
    - contents_pillar: ssh_host_keys:{{ fn }}
    - owner: root
    - group: root
  {% if fn.endswith('.pub') %}
    - mode: 644
  {% else %}
    - mode: 600
    - show_diff: False
  {% endif %}
{% endfor %}

{% for fn in salt['pillar.get']('ssh_host_keys') %}
/etc/ssh/{{ fn }}:
  file.managed:
    - contents_pillar: ssh_host_keys:{{ fn }}
    - owner: root
    - group: root
  {% if fn.endswith('.pub') %}
    - mode: 644
  {% else %}
    - mode: 600
  {% endif %}
{% endfor %}

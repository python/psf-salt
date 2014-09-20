{% for disk in grains.get("data_disks", []) %}
{{ disk.mount }}:
  mount.mounted:
    - device: {{ disk.device }}
    - fstype: {{ disk.fs }}
    - opts: {{ disk.opts }}
    - mkmnt: True
{% endfor %}

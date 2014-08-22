{% for group in pillar.get("groups", []) %}
{{ group }}-group:
  group.present:
    - name: {{ group }}
{% endfor %}

{% if 'sudoer_groups' in pillar %}
{% for group in pillar.get('sudoer_groups', {}) %}
{{group}}-sudoer_group:
  group.present:
    - name: {{group}}
{% endfor %}
/etc/sudoers.d/salt:
  file.managed:
    - source: salt://sudoers/config/salt.jinja
    - template: jinja
    - context:
      sudoers: {{ pillar.get('sudoer_groups', {}).keys()|join(',') }}
    - user: root
    - group: root
    - mode: 640
{% endif %}

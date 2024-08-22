{% set backup_host = salt['pillar.get']('backup:target_host') %}
{% set backup_user = salt['pillar.get']('backup:user') %}
{% set backup_key_location = '/etc/backup/.ssh' %}

include:
  - backup.base

/etc/backup:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"

{{ backup_key_location }}:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"

{{ backup_host }}-ssh-key-create:
  cmd.run:
    - name: ssh-keygen -t rsa -b 4096 -f {{ backup_key_location }}/id_rsa_{{ backup_host }} -N ""
    - creates: {{ backup_key_location }}/id_rsa_{{ backup_host }}

# We publish the public key to the mine so that the backup server can consume all of them
# and add them to the `authorized_keys` file
{{ backup_host }}-public-key-publish:
  module.run:
    - name: mine.send
    - m_name: cmd.run
    - kwargs:
        cmd: cat {{ backup_key_location }}/id_rsa_{{ backup_host }}.pub
    - onchanges:
      - cmd: {{ backup_host }}-ssh-key-create

{% for backup, config in salt['pillar.get']('backup:directories', {}).items() %}

{{ backup }}-script-dir:
  file.directory:
    - name: /usr/local/backup/{{ backup }}/scripts
    - makedirs: True

{{ backup }}-script:
  file.managed:
    - name: /usr/local/backup/{{ backup }}/scripts/backup.bash
    - user: {{ config['user'] }}
    - mode: "0500"
    - source: salt://backup/client/templates/backup.bash.jinja
    - template: jinja
    - context:
        pre_script: '{{ config.get('pre_script', ":") }}'
        {% if grains["oscodename"] == "noble" -%}
        remote_command: '/usr/bin/rdiff-backup --terminal-verbosity 1 --remote-schema "ssh -i {{ backup_key_location }}/id_rsa_{{ backup_host }} -C %s rdiff-backup server" --no-eas {%- for exclude in config.get("exclude", []) %} --exclude {{ exclude }} {%- endfor %} {{ config["source_directory"] }} {{ config["target_user"] }}@{{ backup_host }}::{{ config["target_directory"] }}'
        {% else %}
        remote_command: '/usr/bin/rdiff-backup --terminal-verbosity 1 {%- for exclude in config.get("exclude", []) %} --exclude {{ exclude }} {%- endfor %} --no-eas --remote-schema "ssh -i {{ backup_key_location }}/id_rsa_{{ backup_host }} -C %s rdiff-backup server" {{ config["source_directory"] }} {{ config["target_user"] }}@{{ backup_host }}::{{ config["target_directory"] }}'
        {% endif %}
        post_script: '{{ config.get('post_script', ":") }}'
        cleanup_script: '{{ config.get('cleanup_script', ":") }}'

{{ backup }}-cron:
  file.managed:
    - name: /etc/cron.d/{{ backup }}-backup
    - template: jinja
    - source: salt://backup/client/templates/cron.jinja
    - context:
        job_frequency: {{ config['frequency'] }}
        job_user: {{ config['user'] }}
        job_command: /usr/local/backup/{{ backup }}/scripts/backup.bash

{% endfor %}

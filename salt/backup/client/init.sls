
include:
  - backup.base

/etc/backup:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"

/etc/backup/.ssh:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"

{% for backup, config in salt['pillar.get']('backup:directories', {}).items() %}

{{ backup }}-ssh-key:
  file.managed:
    - name: /etc/backup/.ssh/id_rsa_{{ backup }}
    - contents_pillar: backup-secret:directories:{{ backup }}:ssh_key
    - user: {{ config['user'] }}
    - mode: "0600"
    - show_diff: False

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
        remote_command: '/usr/bin/rdiff-backup --terminal-verbosity 1 {%- for exclude in config.get('exclude', []) %} --exclude {{ exclude }} {%- endfor %} --no-eas --remote-schema "ssh -i /etc/backup/.ssh/id_rsa_{{ backup }} -C %s rdiff-backup --server" {{ config['source_directory'] }} {{ config['target_user'] }}@{{ config['target_host'] }}::{{ config['target_directory'] }}'
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

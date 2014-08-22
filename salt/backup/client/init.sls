
include:
  - backup.base

/etc/backup:
  file.directory:
    - user: root
    - group: root
    - mode: 755

/etc/backup/.ssh:
  file.directory:
    - user: root
    - group: root
    - mode: 755

{% for backup, config in salt['pillar.get']('backup:directories', {}).iteritems() %}

{{ backup }}-ssh-key:
  file.managed:
    - name: /etc/backup/.ssh/id_rsa_{{ backup }}
    - contents_pillar: backup:directories:{{ backup }}:ssh_key
    - user: {{ config['user'] }}
    - mode: 600

{{ backup }}-script-dir:
  file.directory:
    - name: /usr/local/backup/{{ backup }}/scripts
    - makedirs: True

{{ backup }}-script:
  file.managed:
    - name: /usr/local/backup/{{ backup }}/scripts/backup.bash
    - user: {{ config['user'] }}
    - mode: 500
    - source: salt://backup/client/templates/backup.bash.jinja
    - template: jinja
    - context:
      pre_script: '{{ config.get('pre_script', ":") }}'
      remote_command: '/usr/bin/rdiff-backup --no-eas --remote-schema "ssh -i /etc/backup/.ssh/id_rsa_{{ backup }} -C %s rdiff-backup --server" {{ config['source_directory'] }} {{ config['target_user'] }}@{{ config['target_host'] }}::{{ config['target_directory'] }}'
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

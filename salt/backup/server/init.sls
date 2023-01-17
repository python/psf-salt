
include:
  - backup.base

{% for backup, config in salt['pillar.get']('backup-server:backups', {}).items() %}

{{ backup }}-user:
  user.present:
    - name: {{ config['user'] }}

{{ backup }}-ssh:
  ssh_auth:
    - present
    - user: {{ config['user'] }}
    - names:
      - {{ config['authorized_key'] }}
    - options:
      - command="rdiff-backup --server"
      - no-pty
      - no-port-forwarding
      - no-agent-forwarding
      - no-X11-forwarding
    - require:
      - user: {{ config['user'] }}

{{ backup }}:
  file.directory:
    - name: {{ config['directory'] }}
    - user: {{ config['user'] }}
    - makedirs: True
    - require:
      - user: {{ config['user'] }}

{{ backup }}-increment-cleanup:
  file.managed:
    - name: /etc/cron.d/{{ backup }}-backup-cleanup
    - user: root
    - group: root
    - template: jinja
    - source: salt://backup/server/templates/cron.jinja
    - context:
        cron: '0 3 * * *'
        job_user: root
        job_command: 'rdiff-backup --terminal-verbosity 2 --force --remove-older-than {{ config['increment_retention'] }} {{ config['directory'] }}'

{% endfor %}

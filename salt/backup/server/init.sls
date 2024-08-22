{% set backup_hosts = salt['mine.get']('*', 'cmd.run') %}
{% set target_host = salt['pillar.get']('backup:target_host') %}

include:
  - backup.base

/backup:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"

{% for backup, config in salt['pillar.get']('backup-server:backups', {}).items() %}

{{ backup }}-user:
  user.present:
    - name: {{ config['user'] }}

{{ backup }}-ssh-dir:
  file.directory:
    - name: /home/{{ config['user'] }}/.ssh
    - user: {{ config['user'] }}
    - group: {{ config['user'] }}
    - mode: 0700
    - makedirs: True
    - require:
      - user: {{ config['user'] }}

{{ backup }}-authorized-keys:
  file.managed:
    - name: /home/{{ config['user'] }}/.ssh/authorized_keys
    - user: {{ config['user'] }}
    - group: {{ config['user'] }}
    - mode: 0600
    - replace: False
    - require:
      - file: {{ backup }}-ssh-dir

{% for host, pubkey in backup_hosts.items() %}
{{ backup }}-{{ host }}-ssh-key:
  file.append:
    - name: /home/{{ config['user'] }}/.ssh/authorized_keys
    - text: 'command="rdiff-backup server",no-pty,no-port-forwarding,no-agent-forwarding,no-X11-forwarding {{ pubkey }}'
    - require:
      - file: {{ backup }}-authorized-keys
{% endfor %}

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
        job_command: 'rdiff-backup --terminal-verbosity 1 --force remove increments --older-than {{ config['increment_retention'] }} {{ config['directory'] }}'

{% endfor %}


include:
  - backup.base

{# TODO: When we have retired distros older than 20.04, remove this #}
/etc/ssh/sshd_config.d/pubkey.conf:
  file.managed:
    - contents: |
        PubkeyAcceptedAlgorithms +ssh-rsa
    - user: root
    - group: root
    - mode: "0644"

{% for backup, config in salt['pillar.get']('backup_directories', {}).items() %}

{{ backup }}-user:
  user.present:
    - name: {{ config['target_user'] }}

{{ backup }}-ssh:
  ssh_auth:
    - present
    - user: {{ config['target_user'] }}
    - names:
      - {{ salt['pillar.get']("backup_keys", {}).get(config['target_user'], {}).get('public') }}
    - options:
      - command="rdiff-backup server"
      - no-pty
      - no-port-forwarding
      - no-agent-forwarding
      - no-X11-forwarding
    - require:
      - user: {{ config['target_user'] }}

{{ backup }}:
  file.directory:
    - name: {{ config['target_directory'] }}
    - user: {{ config['target_user'] }}
    - makedirs: True
    - require:
      - user: {{ config['target_user'] }}

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
        job_command: 'rdiff-backup --terminal-verbosity 1 --force remove increments --older-than {{ config['increment_retention'] }} {{ config['target_directory'] }}'

{% endfor %}

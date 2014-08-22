
include:
  - backup.base

{% for volume, mount in salt['pillar.get']('backup-server:volumes').iteritems() %}
{{ volume }}-mkfs:
  cmd.run:
    - name: 'yes y | mkfs.ext4 {{ volume }}'
    - unless: 'file -s {{ volume }} | grep ext4'

{{ mount }}:
  mount.mounted:
    - device: {{ volume }}
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults
{% endfor %}

{% for backup, config in salt['pillar.get']('backup-server:backups').iteritems() %}

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
      job_command: 'rdiff-backup --force --remove-older-than {{ config['increment_retention'] }} {{ config['directory'] }}'

{% endfor %}

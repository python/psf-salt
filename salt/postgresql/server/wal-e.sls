{% set postgresql = salt["pillar.get"]("postgresql", {}) %}
{% set wale = salt["pillar.get"]("wal-e", {}) %}

{% if wale %}
wal-e-dependencies:
  pkg.installed:
    - pkgs:
      - daemontools
      - lzop
      - pv


python-wal-e:
  pkg.installed:
    - require:
      - pkg: wal-e-dependencies


/etc/wal-e.d:
  file.directory:
    - user: root
    - group: postgres
    - mode: 750


/etc/wal-e.d/WALE_SWIFT_PREFIX:
  file.managed:
    - contents: "{{ wale['swift-prefix'] }}/{{ grains['fqdn'] }}"
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_AUTHURL:
  file.managed:
    - contents_pillar: wal-e:swift-authurl
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_REGION:
  file.managed:
    - contents_pillar: wal-e:swift-region
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_USER:
  file.managed:
    - contents_pillar: wal-e:swift-user
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/SWIFT_PASSWORD:
  file.managed:
    - contents_pillar: wal-e:swift-password
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/etc/wal-e.d/WALE_GPG_KEY_ID:
  file.managed:
    - contents_pillar: wal-e:gpg-key-id
    - user: root
    - group: postgres
    - mode: 640
    - require:
      - file: /etc/wal-e.d


/var/lib/postgresql/wal-e.gpg:
  file.managed:
    - contents_pillar: wal-e:gpg-key
    - user: root
    - group: postgres
    - mode: 644
    - show_diff: False
    - require:
      - pkg: postgresql-server


wal-e-gpg-key:
  cmd.wait:
    - name: gpg --import /var/lib/postgresql/wal-e.gpg
    - user: postgres
    - watch:
      - file: /var/lib/postgresql/wal-e.gpg


/var/lib/postgresql/.gnupg/gpg.conf:
  file.managed:
    - source: salt://postgresql/server/configs/gpg.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 600
    - require:
      - cmd: wal-e-gpg-key


wal-e-initial-backup:
  cmd.run:
    - name: 'SWIFT_TENANT="{{ salt["pillar.get"]("wal-e:swift-tenant") }}" envdir /etc/wal-e.d wal-e backup-push {{ postgresql.data_dir }} && touch /var/lib/postgresql/wal-e.initial'
    - user: postgres
    - unless: ls /var/lib/postgresql/wal-e.initial
    - require:
      - service: postgresql-server
      - pkg: python-wal-e
      - cmd: wal-e-gpg-key
      - file: {{ postgresql.config_dir }}/conf.d
      - file: /etc/wal-e.d/WALE_SWIFT_PREFIX
      - file: /etc/wal-e.d/SWIFT_AUTHURL
      - file: /etc/wal-e.d/SWIFT_REGION
      - file: /etc/wal-e.d/SWIFT_USER
      - file: /etc/wal-e.d/SWIFT_PASSWORD
      - file: /etc/wal-e.d/WALE_GPG_KEY_ID
      - file: /var/lib/postgresql/.gnupg/gpg.conf


{{ postgresql.config_dir }}/conf.d/wal-e.conf:
  file.managed:
    - source: salt://postgresql/server/configs/wal-e.conf.jinja
    - template: jinja
    - user: postgres
    - group: postgres
    - mode: 640
    - require:
      - pkg: python-wal-e
      - file: {{ postgresql.config_dir }}/conf.d
      - file: /etc/wal-e.d/WALE_SWIFT_PREFIX
      - file: /etc/wal-e.d/SWIFT_AUTHURL
      - file: /etc/wal-e.d/SWIFT_REGION
      - file: /etc/wal-e.d/SWIFT_USER
      - file: /etc/wal-e.d/SWIFT_PASSWORD
      - file: /etc/wal-e.d/WALE_GPG_KEY_ID
      - file: /var/lib/postgresql/.gnupg/gpg.conf
    - watch_in:
      - service: postgresql-server


weekly-interval-wal-e-backup:
  cron.present:
    - identifier: weekly-interval-wal-e-backup
    - name: 'SWIFT_TENANT="{{ salt["pillar.get"]("wal-e:swift-tenant") }}" envdir /etc/wal-e.d /usr/local/bin/wal-e backup-push {{ postgresql.data_dir }} >> /var/log/postgresql/cron-backup.log 2>&1'
    - user: postgres
    - minute: '0'
    - hour: '0'
    - dayweek: '0'
{% endif %}

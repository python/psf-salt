aptly-gpg:
  file.managed:
    - name: /etc/apt/keys/aptly-squeeze-main.gpg
    - source: salt://aptly/configs/APT-GPG-KEY-APTLY
    - user: root
    - group: root
    - mode: 644

  cmd.wait:
    - name: apt-key add /etc/apt/keys/aptly-squeeze-main.gpg
    - watch:
      - file: aptly


aptly-repo:
  file.managed:
    - name: /etc/apt/sources.list.d/aptly.list
    - content: "deb http://repo.aptly.info/ squeeze main\n"
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: aptly-gpg
      - cmd: aptly-gpg
    - require_in:
      - pkg: aptly

  module.wait:
    - name: pkg.refresh_db
    - watch:
      - file: aptly-repo


aptly:
  pkg:
    - installed

  group.present:
    - system: True

  user.present:
    - gid_from_name: True
    - home: /srv/aptly
    - createhome: False
    - system: True
    - require:
      - group: aptly


aptly-uploaders:
  group.present:
    - system: True


/etc/aptly.conf:
  file.managed:
    - source: salt://aptly/configs/aptly.conf.jinja
    - template: jinja
    - user: root
    - group: aptly
    - mode: 640
    - require:
      - pkg: aptly
      - user: aptly


/etc/logrotate.d/aptly:
  file.managed:
    - source: salt://aptly/configs/aptly-logrotate.conf


/var/log/aptly:
  file.directory:
    - user: aptly
    - group: aptly
    - mode: 755
    - require:
      - user: aptly


/srv/aptly:
  file.directory:
    - user: aptly
    - group: aptly
    - mode: 755
    - require:
      - user: aptly


/srv/aptly/signing.key:
  file.managed:
    - contents_pillar: aptly:signing.key
    - user: root
    - group: aptly
    - mode: 640
    - require:
      - file: /srv/aptly
      - user: aptly


aptly-gpg:
  cmd.wait:
    - name: gpg --allow-secret-key-import --import /srv/aptly/signing.key
    - user: aptly
    - watch:
      - file: /srv/aptly/signing.key
    - require:
      - user: aptly


/srv/aptly/incoming:
  file.directory:
    - user: aptly
    - group: aptly-uploaders
    - mode: 770
    - require:
      - user: aptly
      - group: aptly-uploaders
      - file: /srv/aptly


{% for name, config in salt["pillar.get"]("aptly:repos", {}).items() %}  # Hack to fix highlighting"
{% set component = config.get('component', 'main') %}
{% set distribution = config.get('distribution', 'trusty') %}
{% set endpoint = config.get("endpoint", config.get("prefix", "")) %}

aptly-repository-{{ name }}:
  cmd.run:
    - name: "aptly repo create -component={{ component }} -distribution={{ distribution }} {{ name }}"
    - unless: aptly repo show {{ name }}
    - user: aptly
    - require:
      - pkg: aptly
      - file: /etc/aptly.conf
      - file: /srv/aptly


aptly-publish-{{ name }}:
  cmd.run:
    - name: "aptly publish repo -component={{ component }} -distribution={{ distribution }} {{ name }} {{ endpoint }}"
    - unless: "aptly publish list | grep '* \\+{{ endpoint|default('.', boolean=True) }}/{{ distribution }} \\[.\\+\\] \\+publishes {{ "{" }}{{ component }}: \\[{{ name }}\\]}'"
    - user: aptly
    - require:
      - cmd: aptly-repository-{{ name }}


/srv/aptly/incoming/{{ name }}:
  file.directory:
    - user: aptly
    - group: aptly-uploaders
    - mode: 2770
    - require:
      - user: aptly
      - group: aptly-uploaders
      - file: /srv/aptly/incoming

{% endfor %}


/usr/local/bin/aptly-update.sh:
  file.managed:
    - source: salt://aptly/bin/aptly-update.sh.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 755


aptly-incoming:
  cron.present:
    - identifier: aptly-incoming
    - name: /usr/local/bin/aptly-update.sh >> /var/log/aptly/incoming.log
    - user: aptly
    - minute: '*/5'

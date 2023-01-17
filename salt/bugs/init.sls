
include:
  - bugs.postgresql
  - tls.lego
  - nginx

lego_bootstrap:
  cmd.run:
    - name: /usr/local/bin/lego -a --email="infrastructure-staff@python.org" {% if pillar["dc"] == "vagrant" %}--server=https://salt-master.vagrant.psf.io:14000/dir{% endif %} --domains="{{ grains['fqdn'] }}" {%- for domain in pillar['bugs']['subject_alternative_names']  %} --domains {{ domain }}{%- endfor %} --http --path /etc/lego --key-type ec256 run
    - creates: /etc/lego/certificates/{{ grains['fqdn'] }}.json

lego_renew:
  cron.present:
    - name: /usr/bin/sudo -u nginx /usr/local/bin/lego -a --email="infrastructure-staff@python.org" {% if pillar["dc"] == "vagrant" %}--server=https://salt-master.vagrant.psf.io:14000/dir{% endif %} --domains="{{ grains['fqdn'] }}" {%- for domain in pillar['bugs']['subject_alternative_names']  %} --domains {{ domain }}{%- endfor %} --http --http.webroot /etc/lego --path /etc/lego --key-type ec256  renew --days 30 && /usr/sbin/service nginx reload && /usr/sbin/service postfix reload
    - identifier: roundup_lego_renew
    - hour: 0
    - minute: random

lego_config:
  file.managed:
    - name: /etc/nginx/conf.d/lego.conf
    - source: salt://tls/config/lego.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - sls: tls.lego
      - cmd: lego_bootstrap

roundup-deps:
  pkg.installed:
    - pkgs:
      - mercurial
      - postfix
      - python2.7
      - python2.7-dev
      - curl
      - libssl-dev
      - libpq-dev

roundup-pip:
  cmd.run:
    - name: curl https://bootstrap.pypa.io/pip/2.7/get-pip.py | python2.7
    - creates: /usr/local/bin/pip2.7
    - umask: "022"
    - require:
      - pkg: roundup-deps

roundup-virtualenv:
  cmd.run:
    - name: /usr/local/bin/pip2.7 install "virtualenv<21"
    - creates: /usr/local/bin/virtualenv
    - umask: "022"
    - require:
      - cmd: roundup-pip

roundup-group:
  group.present:
    - name: roundup
    - addusers:
      - nginx
    - require:
      - pkg: nginx

roundup-user:
  user.present:
    - name: roundup
    - groups:
      - roundup
    - home: /srv/roundup
    - createhome: True
    - require:
      - group: roundup

roundup-home:
  file.directory:
    - name: /srv/roundup
    - user: roundup
    - group: roundup
    - mode: "0755"

roundup-backup:
  file.directory:
    - name: /backup/roundup
    - user: roundup
    - group: root
    - mode: "0750"

roundup-logs:
  file.directory:
    - name: /var/log/roundup
    - user: roundup
    - group: roundup
    - dir_mode: "0770"
    - file_mode: "0660"
    - recurse:
      - user
      - group
      - mode

roundup-trackers:
  file.directory:
    - name: /srv/roundup/trackers
    - user: roundup
    - group: roundup
    - mode: "0755"

roundup-data:
  file.directory:
    - name: /srv/roundup/data
    - user: roundup
    - mode: "0755"

roundup-run:
  file.directory:
    - name: /var/run/roundup
    - user: roundup
    - mode: "0755"

roundup-clone:
  git.latest:
    - user: roundup
    - name: https://github.com/psf/bpo-roundup.git
    - rev: bugs.python.org
    - target: /srv/roundup/src/roundup

roundup-venv:
  virtualenv.managed:
    - name: /srv/roundup/env/
    - user: roundup
    - virtualenv_bin: /usr/local/bin/virtualenv
    - python: /usr/bin/python2.7
    - requirements: salt:///bugs/requirements.txt
    - require:
      - cmd: roundup-virtualenv

roundup-install:
  pip.installed:
    - name: /srv/roundup/src/roundup
    - bin_env: /srv/roundup/env
    - user: roundup
    - reload_modules: True
    - onchanges:
      - git: roundup-clone

tracker-nginx-extras:
  file.directory:
    - name: /etc/nginx/conf.d/tracker-extras
    - user: root
    - group: root
    - mode: "0755"
    - require:
      - pkg: nginx

{% for tracker, config in pillar["bugs"]["trackers"].items() %}
tracker-{{ tracker }}-database:
  postgres_database.present:
    - name: roundup_{{ tracker }}
    - owner: roundup

tracker-{{ tracker }}-datadir:
  file.directory:
    - name: /srv/roundup/data/{{ tracker }}
    - user: roundup
    - mode: "0750"

tracker-{{ tracker }}-clone:
  git.latest:
    - user: roundup
    - name: {{ config['source'] }}
    - target: /srv/roundup/trackers/{{ tracker }}

tracker-{{ tracker }}-clone-permissions:
  file.directory:
    - name: /srv/roundup/trackers/{{ tracker }}
    - mode: "0750"

tracker-{{ tracker }}-config:
  file.managed:
    - name: /srv/roundup/trackers/{{ tracker }}/config.ini
    - source: salt://bugs/config/config.ini.jinja
    - user: roundup
    - group: roundup
    - mode: "0640"
    - template: jinja
    - defaults: {{ dict(pillar['bugs']['defaults']) }}
    - context: {{ config.get('config', {}) }}

tracker-{{ tracker }}-detector-config:
  file.managed:
    - name: /srv/roundup/trackers/{{ tracker }}/detectors/config.ini
    - source: salt://bugs/config/detector-config.ini.jinja
    - user: roundup
    - group: roundup
    - mode: "0640"
    - template: jinja
    - context:
        detector_config: {{ config.get('detector_config', {}) }}

tracker-{{ tracker }}-mailgw-forward:
  file.managed:
    - name: /srv/roundup/.forward+{{ tracker }}
    - source: salt://bugs/config/instance-forward.jinja
    - user: roundup
    - group: roundup
    - mode: "0640"
    - template: jinja
    - context:
        tracker: {{ tracker }}

tracker-{{ tracker }}-wsgi:
  file.managed:
    - name: /srv/roundup/trackers/{{ tracker }}/wsgi.py
    - source: salt://bugs/config/instance_wsgi.py.jinja
    - user: roundup
    - mode: "0644"
    - template: jinja
    - context:
        tracker: {{ tracker }}

/etc/systemd/system/roundup-{{ tracker }}.service:
  file.managed:
    - source: salt://bugs/config/instance.service.jinja
    - template: jinja
    - context:
        tracker: {{ tracker }}
        workers: {{ config.get('workers', '4') }}

  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - file: /etc/systemd/system/roundup-{{ tracker }}.service

roundup-{{ tracker }}:
  service.running:
    - enable: True
    - reload: True
    - require:
      - cmd: /etc/systemd/system/roundup-{{ tracker }}.service
    - watch_any:
      - file: /etc/systemd/system/roundup-{{ tracker }}.service
      - git: roundup-clone
      - git: tracker-{{ tracker }}-clone
      - file: tracker-{{ tracker }}-config
      - file: tracker-{{ tracker }}-detector-config

tracker-{{ tracker }}-nginx-config:
  file.managed:
    - name: /etc/nginx/sites.d/tracker-{{ tracker }}.conf
    - source: salt://bugs/config/nginx.conf.jinja
    - user: nginx
    - mode: "0600"
    - template: jinja
    - context:
        tracker: {{ tracker }}
        server_name: {{ config.get('server_name') }}
    - require:
      - file: /etc/nginx/sites.d/

roundup-{{ tracker }}-backup:
  file.directory:
    - name: /backup/roundup/{{ tracker }}
    - user: roundup
    - group: root
    - mode: "0750"
    - makedirs: True

tracker-{{ tracker }}-backup:
  cron.present:
    - name: /usr/bin/rsync --quiet -av /srv/roundup/data/{{ tracker }}/ /backup/roundup/{{ tracker }}/data/
    - identifier: roundup_tracker_{{ tracker }}_data_backup
    - user: root
    - minute: random
{% endfor %}

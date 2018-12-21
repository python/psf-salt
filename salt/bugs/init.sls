
include:
  - bugs.postgresql
  - tls.lego
  - nginx

lego_bootstrap:
  cmd.run:
    - name: /usr/local/bin/lego -a --email="infrastructure-staff@python.org" --domains="{{ grains['fqdn'] }}" {%- for domain in pillar['bugs']['subject_alternative_names']  %} --domains {{ domain }}{%- endfor %} --webroot /etc/lego --path /etc/lego --key-type ec256 run
    - creates: /etc/lego/certificates/{{ grains['fqdn'] }}.json

lego_renew:
  cron.present:
    - name: /usr/local/bin/lego -a --email="infrastructure-staff@python.org" --domains="{{ grains['fqdn'] }}" {%- for domain in pillar['bugs']['subject_alternative_names']  %} --domains {{ domain }}{%- endfor %} --webroot /etc/lego --path /etc/lego --key-type ec256  renew --days 30 && /sbin/service nginx reload
    - hour: 0
    - minute: random

lego_config:
  file.managed:
    - name: /etc/nginx/conf.d/lego.conf
    - source: salt://tls/config/lego.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - sls: tls.lego

roundup-deps:
  pkg.installed:
    - pkgs:
      - mercurial
      - irker
      - python-virtualenv
      - python-pip

irkerd:
  service.running:
    - enable: True

roundup-user:
  user.present:
    - name: roundup
    - home: /srv/roundup
    - createhome: True

roundup-nginx-group-member:
  group.present:
    - name: roundup
    - addusers:
      - nginx

roundup-home:
  file.directory:
    - name: /srv/roundup
    - user: roundup
    - mode: 755

roundup-trackers:
  file.directory:
    - name: /srv/roundup/trackers
    - user: roundup
    - mode: 755

roundup-data:
  file.directory:
    - name: /srv/roundup/data
    - user: roundup
    - mode: 755

roundup-clone:
  hg.latest:
    - user: roundup
    - name: https://hg.python.org/tracker/roundup
    - rev: bugs.python.org
    - target: /srv/roundup/src/roundup

roundup-venv:
  virtualenv.managed:
    - name: /srv/roundup/env/
    - user: roundup
    - python: /usr/bin/python2.7
    - requirements: salt:///bugs/requirements.txt

roundup-install:
  pip.installed:
    - name: /srv/roundup/src/roundup
    - bin_env: /srv/roundup/env
    - user: roundup
    - reload_modules: True
    - onchanges:
      - hg: roundup-clone

tracker-nginx-extras:
  file.directory:
    - name: /etc/nginx/conf.d/tracker-extras
    - user: root
    - group: root
    - mode: 755

{% for tracker, config in pillar["bugs"]["trackers"].items() %}
tracker-{{ tracker }}-database:
  postgres_database.present:
    - name: roundup_{{ tracker }}
    - owner: roundup

tracker-{{ tracker }}-datadir:
  file.directory:
    - name: /srv/roundup/data/{{ tracker }}
    - user: roundup
    - mode: 750

tracker-{{ tracker }}-clone:
  hg.latest:
    - user: roundup
    - name: {{ config['source'] }}
    - target: /srv/roundup/trackers/{{ tracker }}

tracker-{{ tracker }}-clone-permissions:
  file.directory:
    - name: /srv/roundup/trackers/{{ tracker }}
    - mode: 750

tracker-{{ tracker }}-config:
  file.managed:
    - name: /srv/roundup/trackers/{{ tracker }}/config.ini
    - source: salt://bugs/config/config.ini.jinja
    - user: roundup
    - mode: 600
    - template: jinja
    - defaults: {{ dict(pillar['bugs']['defaults']) }}
    - context: {{ config.get('config', {}) }}

tracker-{{ tracker }}-detector-config:
  file.managed:
    - name: /srv/roundup/trackers/{{ tracker }}/detectors/config.ini
    - source: salt://bugs/config/detector-config.ini.jinja
    - user: roundup
    - mode: 600
    - template: jinja
    - context:
      detector_config: {{ config.get('detector_config', {}) }}

tracker-{{ tracker }}-nginx-config:
  file.managed:
    - name: /etc/nginx/sites.d/tracker-{{ tracker }}.conf
    - source: salt://bugs/config/nginx.conf.jinja
    - user: nginx
    - mode: 600
    - template: jinja
    - context:
      tracker: {{ tracker }}
      server_name: {{ config.get('server_name') }}
{% endfor %}

/etc/systemd/system/roundup.service:
  file.managed:
    - source: salt://bugs/config/roundup.service
    - template: jinja
    - context:
      trackers: {{ pillar["bugs"]["trackers"].keys() }}

  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - file: /etc/systemd/system/roundup.service

roundup:
  service.running:
    - enable: True
    - require:
      - cmd: /etc/systemd/system/roundup.service
    - watch:
      - file: /etc/systemd/system/roundup.service

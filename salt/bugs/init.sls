roundup-deps:
  pkg.installed:
    - pkgs:
      - mercurial
      - postfix
      - python-virtualenv

roundup-user:
  user.present:
    - name: roundup
    - home: /srv/roundup
    - createhome: True

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

{% for tracker, config in pillar["bugs"]["trackers"].items() %}
tracker-{{ tracker }}-clone:
  hg.latest:
    - user: roundup
    - name: {{ config['source'] }}
    - target: /srv/roundup/trackers/{{ tracker }}

tracker-{{ tracker }}-config:
  file.managed:
    - name: /srv/roundup/trackers/{{ tracker }}/config.ini
    - source: salt://bugs/config/config.ini.jinja
    - user: roundup
    - mode: 600
    - template: jinja
    - defaults: {{ dict(pillar['bugs']['defaults']) }}
    - context: {{ config.get('config', {}) }}
{% endfor %}

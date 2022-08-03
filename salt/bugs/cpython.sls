rietveld-clone:
  git.latest:
    - user: roundup
    - name: https://github.com/psf/bpo-rietveld.git
    - target: /srv/roundup/trackers/cpython/rietveld
    - rev: bugs.python.org
    - require:
      - git: tracker-cpython-clone

django-gae2django-clone:
  git.latest:
    - user: roundup
    - name: https://github.com/psf/bpo-django-gae2django.git
    - target: /srv/roundup/trackers/cpython/django-gae2django
    - rev: bugs.python.org
    - require:
      - git: tracker-cpython-clone

/var/run/cpython-extras:
  file.directory:
    - user: roundup
    - mode: "0755"

/srv/roundup/trackers/cpython/rietveld/rietveld_helper:
  file.symlink:
    - target: /srv/roundup/trackers/cpython/django-gae2django/examples/rietveld/rietveld_helper
    - user: roundup

/srv/roundup/trackers/cpython/rietveld/gae2django:
  file.symlink:
    - target: /srv/roundup/trackers/cpython/django-gae2django/gae2django
    - user: roundup

rietveld-venv:
  virtualenv.managed:
    - name: /srv/roundup/trackers/cpython/rietveld/env/
    - user: roundup
    - python: /usr/bin/python2.7
    - requirements: salt:///bugs/rietveld-requirements.txt

/etc/systemd/system/rietveld.service:
  file.managed:
    - source: salt://bugs/config/rietveld.service

  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - file: /etc/systemd/system/rietveld.service

/etc/systemd/system/bpo-suggest.service:
  file.managed:
    - source: salt://bugs/config/bpo-suggest.service

  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - file: /etc/systemd/system/bpo-suggest.service

rietveld:
  service.running:
    - enable: True
    - require:
      - cmd: /etc/systemd/system/rietveld.service
    - watch_any:
      - file: /etc/systemd/system/rietveld.service
      - git: rietveld-clone
      - git: django-gae2django-clone
      - file: tracker-cpython-config
      - file: tracker-cpython-detector-config
      - git: tracker-cpython-clone

bpo-suggest:
  service.running:
    - enable: True
    - require:
      - cmd: /etc/systemd/system/bpo-suggest.service
    - watch_any:
      - file: /etc/systemd/system/bpo-suggest.service
      - git: tracker-cpython-clone

tracker-cpython-nginx-extras-upstreams:
  file.managed:
    - name: /etc/nginx/conf.d/tracker-extras/upstreams-cpython.conf
    - source: salt://bugs/config/cpython/tracker-upstreams.conf
    - user: root
    - group: root
    - require:
      - file: tracker-nginx-extras

tracker-cpython-nginx-extras:
  file.managed:
    - name: /etc/nginx/conf.d/tracker-extras/cpython.conf
    - source: salt://bugs/config/cpython/tracker-extras.conf
    - user: root
    - group: root
    - require:
      - file: tracker-nginx-extras

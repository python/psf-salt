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
    - name: https://hg.python.org/tracker/roundup
    - rev: bugs.python.org
    - target: /srv/roundup/src/roundup

roundup-venv:
  virtualenv.managed:
    - name: /srv/roundup/env/
    - user: roundup
    - python: /usr/bin/python2.7



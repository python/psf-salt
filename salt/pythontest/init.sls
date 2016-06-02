include:
  - nginx

git:
  pkg.installed

/srv/:
  file.directory:
    - user: www-data
    - group: www-data

testdata-repo:
  git.latest:
    - name: https://github.com/python/pythontestdotnet
    - target: /srv/python-testdata/
    - user: www-data
    - force_clone: true
    - watch_in:
      - service: nginx
  require:
    - pkg: git
    - file: /srv/

chmod-testdata:
  cmd.run:
    - name: chmod -R o+r /srv/python-testdata/
    - onchanges:
      - git: testdata-repo

/etc/nginx/sites.d/pythontest.conf:
  file.managed:
    - source: salt://pythontest/config/nginx.pythontest.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
  require:
    - file: /etc/nginx/sites.d/
    - git: testdata-repo

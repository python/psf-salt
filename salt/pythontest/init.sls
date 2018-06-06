include:
  - nginx

git:
  pkg.installed

vsftpd:
  pkg:
    - installed
  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/vsftpd.conf
    - require:
      - file: /etc/vsftpd.conf
      - pkg: vsftpd

/srv/:
  file.directory:
    - user: www-data
    - group: www-data

testdata-repo:
  git.latest:
    - name: https://github.com/python/pythontestdotnet
    - target: /srv/python-testdata/
    - user: www-data
    - force_checkout: True
    - force_reset: True
    - watch_in:
      - service: nginx
  require:
    - pkg: git
    - file: /srv/

chmod-testdata:
  cmd.run:
    - name: chmod -R o+r /srv/python-testdata/ && find /srv/python-testdata/ -type d -exec chmod o+rx {} ';'
    - onchanges:
      - git: testdata-repo

chmod-ftpdata:
  cmd.run:
    - name: chmod -R a-w /srv/python-testdata/ftp
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

/etc/vsftpd.conf:
  file.managed:
    - source: salt://pythontest/config/vsftpd.conf
    - user: root
    - group: root
    - mode: 644

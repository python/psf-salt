include:
  - tls.lego
  - nginx

#lego_bootstrap:
#  cmd.run:
#    - name: /usr/local/bin/lego -a --email="infrastructure-staff@python.org" --domains="news.pythontest.net" --webroot /etc/lego --path /etc/lego --key-type rsa2048 run
#    - creates: /etc/lego/certificates/news.pythontest.net.json

#lego_renew:
#  cron.present:
#    - name: /usr/bin/sudo -u nginx /usr/local/bin/lego -a --email="infrastructure-staff@python.org" --domains="news.pythontest.net" --webroot /etc/lego --path /etc/lego --key-type rsa2048  renew --days 30 && /usr/sbin/service inn2 restart
#    - identifier: roundup_lego_renew
#    - hour: 0
#    - minute: random

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

inn2:
  pkg:
    - installed
  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/news/inn.conf
    - require:
      - file: /etc/news/inn.conf
      - pkg: inn2

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
    - require:
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
    - mode: "0644"
    - require:
       - file: /etc/nginx/sites.d/
       - git: testdata-repo

/etc/vsftpd.conf:
  file.managed:
    - source: salt://pythontest/config/vsftpd.conf
    - user: root
    - group: root
    - mode: "0644"

/etc/news/inn.conf:
  file.managed:
    - source: salt://pythontest/config/inn.conf
    - user: root
    - group: root
    - mode: "0644"

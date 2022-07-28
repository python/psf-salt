moin:
  group.present:
    - system: True

  user.present:
    - home: /srv/moin
    - groups:
      - moin
    - require:
      - group: moin

moin-pkgs:
  pkg.installed:
    - pkgs:
      - build-essential
      - python-docutils
      - python-gdchart2
      - python-xapian
      - python2.7
      - python2.7-dev
      - curl

www-data:
  user.present:
    - groups:
      - www-data
      - moin
    - require:
      - user: moin
      - pkg: moin-pkgs

pip:
  cmd.run:
    - name: curl https://bootstrap.pypa.io/pip/2.7/get-pip.py | python2.7
    - creates: /usr/local/bin/pip2.7
    - umask: "022"

virtualenv:
  cmd.run:
    - name: /usr/local/bin/pip2.7 install "virtualenv<21"
    - creates: /usr/local/bin/virtualenv
    - umask: "022"

/srv/moin/venv:
  virtualenv.managed:
    - user: moin
    - system_site_packages: True
    - virtualenv_bin: /usr/local/bin/virtualenv
    - python: /usr/bin/python2.7
    - require:
      - cmd: virtualenv
    - pip_pkgs:
      - moin==1.9.11
      - python-openid==2.2.5

/srv/moin/moin.wsgi:
  file.managed:
    - source: salt://moin/configs/moin.wsgi
    - user: moin
    - group: moin
    - mode: "0644"
    - require:
      - user: moin
      - group: moin

/etc/moin:
  file.directory:
    - user: root
    - group: root
    - dir_mode: "0755"

/etc/moin/python.py:
  file.managed:
    - source: salt://moin/configs/python.py
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/moin

/etc/moin/psf.py:
  file.managed:
    - source: salt://moin/configs/psf.py
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/moin

/etc/moin/jython.py:
  file.managed:
    - source: salt://moin/configs/jython.py
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/moin

/etc/moin/farmconfig.py:
  file.managed:
    - source: salt://moin/configs/farmconfig.py
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/moin
      - file: /etc/moin/python.py
      - file: /etc/moin/psf.py
      - file: /etc/moin/jython.py

/etc/moin/shared_intermap.txt:
  file.managed:
    - source: salt://moin/configs/shared_intermap.txt
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/moin

apache2:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-wsgi
  service.running:
    - enable: True
    - reload: True
    - require:
      - pkg: apache2
    - watch:
      - file: /etc/apache2/*
      - file: /etc/apache2/sites-available/*
      - file: /etc/apache2/sites-enabled/*
      - file: /etc/apache2/mods-enabled/*
      - file: /etc/ssl/private/moin.psf.io.pem

/etc/apache2/mods-enabled/remoteip.load:
  file.symlink:
    - target: /etc/apache2/mods-available/remoteip.load

/etc/apache2/mods-enabled/headers.load:
  file.symlink:
    - target: /etc/apache2/mods-available/headers.load

/etc/apache2/mods-enabled/rewrite.load:
  file.symlink:
    - target: /etc/apache2/mods-available/rewrite.load

/etc/apache2/mods-enabled/socache_shmcb.load:
  file.symlink:
    - target: /etc/apache2/mods-available/socache_shmcb.load

/etc/apache2/mods-enabled/ssl.load:
  file.symlink:
    - target: /etc/apache2/mods-available/ssl.load

/etc/apache2/mods-enabled/ssl.conf:
  file.symlink:
    - target: /etc/apache2/mods-available/ssl.conf

/etc/apache2/mods-enabled/wsgi.load:
  file.symlink:
    - target: /etc/apache2/mods-available/wsgi.load

/etc/apache2/mods-enabled/wsgi.conf:
  file.symlink:
    - target: /etc/apache2/mods-available/wsgi.conf

/etc/apache2/ports.conf:
  file.managed:
    - source: salt://moin/configs/ports.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: apache2

/etc/apache2/sites-available/wiki.python.org.conf:
  file.managed:
    - template: jinja
    - source: salt://moin/configs/wiki.python.org.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: apache2

/etc/apache2/sites-enabled/wiki.python.org.conf:
  file.symlink:
    - target: ../sites-available/wiki.python.org.conf
    - user: root
    - group: root
    - mode: "0644"

/etc/consul.d/service-moin.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: moin
        port: 9000
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

/srv/moin/bin:
  file.directory:
    - user: moin
    - group: moin
    - mode: "0750"
    - require:
      - user: moin
      - group: moin

/srv/moin/bin/moin_maint_cleansessions.sh:
  file.managed:
    - source: salt://moin/scripts/moin_maint_cleansessions.sh
    - user: moin
    - group: moin
    - mode: "0750"
    - require:
      - file: /srv/moin/bin
  cron.present:
    - user: moin
    - hour: '*/6'
    - minute: 0
    - require:
      - file: /srv/moin/bin/moin_maint_cleansessions.sh

/srv/moin/bin/moin_maint_cleansessions_all.sh:
  file.managed:
    - source: salt://moin/scripts/moin_maint_cleansessions_all.sh
    - user: moin
    - group: moin
    - mode: "0750"
    - require:
      - file: /srv/moin/bin
  cron.present:
    - user: moin
    - dayweek: mon
    - hour: 3
    - minute: 0
    - require:
      - file: /srv/moin/bin/moin_maint_cleansessions_all.sh

/srv/moin/bin/moin_maint_cleanpage.sh:
  file.managed:
    - source: salt://moin/scripts/moin_maint_cleanpage.sh
    - user: moin
    - group: moin
    - mode: "0750"
    - require:
      - file: /srv/moin/bin
  cron.present:
    - user: moin
    - dayweek: sun
    - hour: 3
    - minute: 0
    - require:
      - file: /srv/moin/bin/moin_maint_cleanpage.sh

/srv/moin/bin/moin_maint_index_rebuild.sh:
  file.managed:
    - source: salt://moin/scripts/moin_maint_index_rebuild.sh
    - user: moin
    - group: moin
    - mode: "0750"
    - require:
      - file: /srv/moin/bin
  cron.present:
    - user: moin
    - hour: 4
    - minute: 0
    - require:
      - file: /srv/moin/bin/moin_maint_index_rebuild.sh

/etc/logrotate.d/moin:
  file.managed:
    - source: salt://moin/configs/logrotate.conf
    - user: root
    - group: root
    - mode: "0644"

hg-deps:
  pkg.installed:
    - pkgs:
      - mercurial
      - python3-dev
      - python3-virtualenv

svn-deps:
  pkg.installed:
    - pkgs:
      - libapache2-mod-svn

hg-user:
  user.present:
    - name: hg
    - home: /srv/hg
    - shell: /bin/bash

/srv/hg:
  file.directory:
    - user: hg
    - group: hg
    - mode: "0755"

/srv/hg/repos:
  file.directory:
    - user: hg
    - group: hg
    - mode: "0755"

/srv/hg/src:
  file.recurse:
    - source: salt://hg/files/hg/src
    - include_empty: True
    - user: hg
    - dir_mode: "0755"
    - file_mode: "0755"
    - require:
      - user: hg-user

/srv/hg/web:
  file.recurse:
    - source: salt://hg/files/hg/web
    - include_empty: True
    - user: hg
    - dir_mode: "0755"
    - file_mode: "0755"
    - require:
      - user: hg-user

hg-env:
  virtualenv.managed:
    - name: /srv/hg/env
    - user: hg
    - cwd: /srv/hg/src
    - pip_upgrade: True
    - requirements: /srv/hg/src/requirements.txt
    - watch:
      - file: /srv/hg/src

/etc/systemd/system/hgmin.service:
  file.managed:
    - source: salt://hg/config/hgmin.service.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - file: /etc/systemd/system/hgmin.service

hgmin:
  service.running:
    - reload: True
    - watch_any:
      - file: /etc/systemd/system/hgmin.service
      - virtualenv: hg-env
      - file: /srv/hg/src

apache2:
  pkg.installed:
    - pkgs:
      - apache2
      - libapache2-mod-wsgi{% if grains["oscodename"] == "noble" %}-py3{% endif %}
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
      - file: /etc/apache2/conf-available/*
      - file: /etc/apache2/conf-enabled/*
      - file: /etc/ssl/private/hg.psf.io.pem

/etc/apache2/mods-enabled/remoteip.load:
  file.symlink:
    - target: /etc/apache2/mods-available/remoteip.load

/etc/apache2/mods-enabled/headers.load:
  file.symlink:
    - target: /etc/apache2/mods-available/headers.load


/etc/apache2/mods-enabled/ssl.load:
  file.symlink:
    - target: /etc/apache2/mods-available/ssl.load


/etc/apache2/mods-enabled/ssl.conf:
  file.symlink:
    - target: /etc/apache2/mods-available/ssl.conf


/etc/apache2/mods-enabled/socache_shmcb.load:
  file.symlink:
    - target: /etc/apache2/mods-available/socache_shmcb.load


/etc/apache2/mods-enabled/dav.load:
  file.symlink:
    - target: /etc/apache2/mods-available/dav.load


/etc/apache2/mods-enabled/dav_svn.load:
  file.symlink:
    - target: /etc/apache2/mods-available/dav_svn.load


/etc/apache2/mods-enabled/dav_svn.conf:
  file.symlink:
    - target: /etc/apache2/mods-available/dav_svn.conf


/etc/apache2/mods-enabled/authz_svn.load:
  file.symlink:
    - target: /etc/apache2/mods-available/authz_svn.load


/etc/apache2/mods-enabled/rewrite.load:
  file.symlink:
    - target: /etc/apache2/mods-available/rewrite.load

/etc/apache2/mods-enabled/proxy.conf:
  file.symlink:
    - target: /etc/apache2/mods-available/proxy.conf

/etc/apache2/mods-enabled/proxy.load:
  file.symlink:
    - target: /etc/apache2/mods-available/proxy.load

/etc/apache2/mods-enabled/proxy_http.load:
  file.symlink:
    - target: /etc/apache2/mods-available/proxy_http.load


/etc/apache2/ports.conf:
  file.managed:
    - source: salt://hg/config/ports.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: apache2

/etc/apache2/sites-available/hg.conf:
  file.managed:
    - source: salt://hg/config/hg.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: apache2

/etc/apache2/sites-enabled/hg.conf:
  file.symlink:
    - target: ../sites-available/hg.conf
    - user: root
    - group: root
    - mode: "0644"

/etc/apache2/sites-available/svn.conf:
  file.managed:
    - source: salt://hg/config/svn.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: apache2

/etc/apache2/sites-enabled/svn.conf:
  file.symlink:
    - target: ../sites-available/svn.conf
    - user: root
    - group: root
    - mode: "0644"

/etc/apache2/conf-available/remoteip.conf:
  file.managed:
    - source: salt://hg/config/remoteip.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: apache2

/etc/apache2/conf-enabled/remoteip.conf:
  file.symlink:
    - target: ../conf-available/remoteip.conf
    - user: root
    - group: root
    - mode: "0644"

/etc/apache2/REDIRECTS:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"
    - require:
      - pkg: apache2

/etc/apache2/REDIRECTS/sigs.conf:
  file.managed:
    - source: salt://hg/config/legacy/REDIRECTS/sigs.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/apache2/REDIRECTS

/etc/apache2/REDIRECTS/releases.conf:
  file.managed:
    - source: salt://hg/config/legacy/REDIRECTS/releases.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/apache2/REDIRECTS

/etc/apache2/legacy-redirects.conf:
  file.managed:
    - source: salt://hg/config/legacy/legacy-redirects.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/apache2/REDIRECTS/sigs.conf
      - file: /etc/apache2/REDIRECTS/releases.conf

/etc/apache2/sites-available/legacy.conf:
  file.managed:
    - source: salt://hg/config/legacy.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/apache2/legacy-redirects.conf

/etc/apache2/sites-enabled/legacy.conf:
  file.symlink:
    - target: ../sites-available/legacy.conf
    - user: root
    - group: root
    - mode: "0644"

/etc/logrotate.d/apache2:
  file.managed:
    - source: salt://hg/config/apache.logrotate
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: apache2

/etc/consul.d/service-hg.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: hg
        port: 9000
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

/etc/consul.d/service-svn.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: svn
        port: 9001
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

/etc/consul.d/service-legacy.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: legacy
        port: 9002
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

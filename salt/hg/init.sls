hg-deps:
  pkg.installed:
    - pkgs:
      - mercurial

svn-deps:
  pkg.installed:
    - pkgs:
      - libapache2-mod-svn

hg-user:
  user.present:
    - name: hg
    - home: /srv/hg
    - shell: /bin/bash
    - groups:
      - hgaccounts
    - require:
      - user: hgaccounts-user

/srv/hg/bin:
  file.recurse:
    - source: salt://hg/files/hg/bin
    - include_empty: True
    - user: hg
    - dir_mode: "0755"
    - file_mode: "0755"
    - require:
      - user: hg-user

/srv/hg/wsgi:
  file.recurse:
    - source: salt://hg/files/hg/wsgi
    - include_empty: True
    - user: hg
    - dir_mode: "0755"
    - file_mode: "0755"
    - require:
      - user: hg-user

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

/srv/hg/repos.conf:
  file.managed:
    - source: salt://hg/config/repos.conf
    - user: hg
    - group: hg
    - require:
      - user: hg-user

hgaccounts-user:
  user.present:
    - name: hgaccounts
    - home: /srv/hgaccounts

/srv/hgaccounts/bin:
  file.recurse:
    - source: salt://hg/files/hgaccounts/bin
    - include_empty: True
    - user: hgaccounts
    - dir_mode: "0755"
    - file_mode: "0755"
    - require:
      - user: hgaccounts-user

/srv/hgaccounts/src:
  file.recurse:
    - source: salt://hg/files/hgaccounts/src
    - include_empty: True
    - user: hgaccounts
    - dir_mode: "0755"
    - file_mode: "0644"
    - require:
      - user: hgaccounts-user

compile-genauth-wrapper:
  cmd.run:
    - name: "gcc /srv/hgaccounts/src/genauth-wrapper.c -o /srv/hgaccounts/bin/genauth-wrapper"
    - creates: /srv/hgaccounts/bin/genauth-wrapper
    - watch:
      - file: /srv/hgaccounts/src

genauth-wrapper-owner:
  file.managed:
    - name: /srv/hgaccounts/bin/genauth-wrapper
    - user: hg
    - group: hg
    - require:
      - user: hg-user
      - user: hgaccounts-user
      - file: /srv/hgaccounts/src
      - cmd: compile-genauth-wrapper

genauth-wrapper-setuid-setgid-workaround:
  file.managed:
    - name: /srv/hgaccounts/bin/genauth-wrapper
    - mode: "6755"
    - require:
      - file: genauth-wrapper-owner

/srv/hgaccounts/.ssh/authorized_keys:
  file.managed:
    - source: salt://hg/config/hg-account-admins
    - user: hgaccounts
    - group: hgaccounts
    - mode: "0600"
    - makedirs: true
    - dir_mode: "0700"
    - require:
      - user: hgaccounts-user

/usr/share/mercurial/templates/hgpythonorg:
  file.recurse:
    - source: salt://hg/files/hg/templates/hgpythonorg
    - include_empty: True
    - dir_mode: "0755"
    - file_mode: "0644"
    - require:
      - pkg: hg-deps

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
      - file: /etc/ssl/private/hg.psf.io.pem

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

/etc/consul.d/service-hg-ssh.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: hg-ssh
        port: 22
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

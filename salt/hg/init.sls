hg-deps:
  pkg.installed:
    - pkgs:
      - mercurial

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
    - dir_mode: 755
    - file_mode: 755
    - require:
      - user: hg-user

/srv/hg/wsgi:
  file.recurse:
    - source: salt://hg/files/hg/wsgi
    - include_empty: True
    - user: hg
    - dir_mode: 755
    - file_mode: 755
    - require:
      - user: hg-user

/srv/hg/src:
  file.recurse:
    - source: salt://hg/files/hg/src
    - include_empty: True
    - user: hg
    - dir_mode: 755
    - file_mode: 755
    - require:
      - user: hg-user

/srv/hg/repos.conf:
  file.managed:
    - source: salt://hg/config/repos.conf
    - user: hg
    - group: hg
    - require:
      - user: hg-user

/srv/hg/web:
  file.directory:
    - user: hg
    - group: hg
    - mode: 755

hgaccounts-user:
  user.present:
    - name: hgaccounts
    - home: /srv/hgaccounts

/srv/hgaccounts/bin:
  file.recurse:
    - source: salt://hg/files/hgaccounts/bin
    - include_empty: True
    - user: hgaccounts
    - dir_mode: 755
    - file_mode: 755
    - require:
      - user: hgaccounts-user

/srv/hgaccounts/src:
  file.recurse:
    - source: salt://hg/files/hgaccounts/src
    - include_empty: True
    - user: hgaccounts
    - dir_mode: 755
    - file_mode: 644
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
    - mode: 6755
    - require:
      - file: genauth-wrapper-owner

/srv/hgaccounts/.ssh/authorized_keys:
  file.managed:
    - source: salt://hg/config/hg-account-admins
    - user: hgaccounts
    - group: hgaccounts
    - mode: 600
    - makedirs: true
    - dir_mode: 700
    - require:
      - user: hgaccounts-user

/etc/default/irker:
  file.managed:
    - user: root
    - group: root
    - mode: 644
    - contents: 'IRKER_OPTIONS="-n deadparrot%03d -H localhost"'

/usr/share/mercurial/templates/hgpythonorg:
  file.recurse:
    - source: salt://hg/files/hg/templates/hgpythonorg
    - include_empty: True
    - dir_mode: 755
    - file_mode: 644
    - require:
      - pkg: hg-deps

irker:
  pkg.installed:
    - pkgs:
      - irker
  service.running:
    - enable: True
    - reload: True
    - require:
      - pkg: irker
      - file: /etc/default/irker
    - watch:
      - file: /etc/default/irker

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


/etc/apache2/ports.conf:
  file.managed:
    - source: salt://hg/config/ports.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: apache2

/etc/apache2/sites-available/hg.conf:
  file.managed:
    - source: salt://hg/config/hg.apache.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: apache2

/etc/apache2/sites-enabled/hg.conf:
  file.symlink:
    - target: ../sites-available/hg.conf
    - user: root
    - group: root
    - mode: 644

/etc/logrotate.d/apache2:
  file.managed:
    - source: salt://hg/config/apache.logrotate
    - user: root
    - group: root
    - mode: 644
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
    - mode: 644
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
    - mode: 644
    - require:
      - pkg: consul-pkgs

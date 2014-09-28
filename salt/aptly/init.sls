include:
  - nginx


/etc/apt/keys/aptly-squeeze-main.gpg:
  file.managed:
    - source: salt://aptly/configs/APT-GPG-KEY-APTLY
    - user: root
    - group: root
    - mode: 644

  cmd.wait:
    - name: apt-key add /etc/apt/keys/aptly-squeeze-main.gpg
    - watch:
      - file: /etc/apt/keys/aptly-squeeze-main.gpg

aptly:
  pkgrepo.managed:
    - name: deb http://repo.aptly.info/ squeeze main
    - file: /etc/apt/sources.list.d/aptly.list
    - require:
      - file: /etc/apt/keys/aptly-squeeze-main.gpg
      - cmd: /etc/apt/keys/aptly-squeeze-main.gpg
    - require_in:
      - pkg: aptly

  pkg:
    - installed

  group.present:
    - system: True

  user.present:
    - gid_from_name: True
    - home: /srv/aptly
    - createhome: False
    - system: True
    - require:
      - group: aptly


/srv/aptly:
  file.directory:
    - user: aptly
    - group: aptly
    - mode: 755
    - require:
      - user: aptly


/etc/aptly.conf:
  file.managed:
    - source: salt://aptly/configs/aptly.conf.jinja
    - template: jinja
    - user: root
    - group: aptly
    - mode: 640
    - require:
      - pkg: aptly
      - user: aptly


aptly-psf-repo:
  cmd.run:
    - name: aptly repo create -distribution=trusty psf
    - unless: aptly repo show psf
    - user: aptly
    - require:
      - pkg: aptly
      - file: /etc/aptly.conf
      - file: /srv/aptly


aptly-uploaders:
  group.present:
    - system: True

/srv/aptly/incoming:
  file.directory:
    - user: aptly
    - group: aptly-uploaders
    - mode: 770
    - require:
      - user: aptly
      - group: aptly-uploaders
      - file: /srv/aptly


/srv/aptly/incoming/psf:
  file.directory:
    - user: aptly
    - group: aptly-uploaders
    - mode: 2770
    - require:
      - user: aptly
      - group: aptly-uploaders
      - file: /srv/aptly


/var/log/aptly:
  file.directory:
    - user: aptly
    - group: aptly
    - mode: 755
    - require:
      - user: aptly


aptly-psf-repo-incoming:
  cron.present:
    - identifier: aptly-psf-repo-incoming
    - name: "aptly repo add -remove-files=true psf /srv/aptly/incoming/psf >> /var/log/aptly/incoming.log && aptly publish update trusty >> /var/log/aptly/incoming.log"
    - user: aptly
    - minute: '*/5'


/etc/logrotate.d/aptly:
  file.managed:
    - source: salt://aptly/configs/aptly-logrotate.conf


/srv/aptly/signing.key:
  file.managed:
    - contents_pillar: aptly:signing.key
    - user: root
    - group: aptly
    - mode: 640
    - require:
      - file: /srv/aptly
      - user: aptly


aptly-gpg:
  cmd.wait:
    - name: gpg --allow-secret-key-import --import /srv/aptly/signing.key
    - user: aptly
    - watch:
      - file: /srv/aptly/signing.key
    - require:
      - user: aptly


aptly-psf-repo-publish:
  cmd.run:
    - name: "aptly publish repo -component=main -distribution=trusty psf"
    - unless: "aptly publish list | grep './trusty \\[amd64\\] publishes {main: \\[psf\\]}'"
    - user: aptly
    - require:
      - cmd: aptly-psf-repo


/etc/nginx/sites.d/apt.conf:
  file.managed:
    - source: salt://aptly/configs/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - sls: nginx

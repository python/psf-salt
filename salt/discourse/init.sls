discourse:
  pkg.installed:
    - pkgs:
      - git
      - ruby
      - bundler
      - imagemagick
      - advancecomp
      - gifsicle
      - jhead
      - jpegoptim
      - libjpeg-turbo-progs
      - optipng
      - pngcrush
      - pngquant
      - libpq-dev

  group.present:
    - addusers:
      - nginx
    - require:
      - user: nginx

  user.present:
    - home: /srv/discourse

  git.latest:
    - name: https://github.com/discourse/discourse.git
    - rev: v1.5.3
    - target: /srv/discourse/app
    - user: discourse
    - force_checkout: True
    - require:
      - pkg: discourse
      - user: discourse

  service.running:
    - enable: True
    - require:
      - cmd: /etc/systemd/system/discourse.service
      - cmd: consul-template
    - watch:
      - file: /etc/systemd/system/discourse.service
      - file: /srv/discourse/app/config/unicorn.conf.rb
      - cmd: discourse-migrate
      - git: discourse


discourse-ruby-install:
  cmd.run:
    - name: "bundle install --deployment --without test --without development"
    - user: discourse
    - cwd: /srv/discourse/app
    - onchanges:
      - git: discourse
      - user: discourse


discourse-migrate:
  cmd.run:
    - name: "bundle exec rake db:migrate assets:precompile"
    - cwd: /srv/discourse/app
    - user: discourse
    - env:
      - RAILS_ENV: 'production'
    - require:
      - user: discourse
      - cmd: consul-template
      - pkg: redis
    - onchanges:
      - cmd: discourse-ruby-install


/usr/share/consul-template/templates/discourse.conf:
  file.managed:
    - source: salt://discourse/config/discourse.conf
    - template: jinja
    - user: discourse
    - show_diff: False
    - require:
      - user: discourse
      - git: discourse


/etc/consul-template.d/discourse.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/discourse.conf
        destination: /srv/discourse/app/config/discourse.conf
        command: "true"
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template


/srv/discourse/app/tmp/pids/:
  file.directory:
    - user: discourse
    - dir_mode: "770"
    - file_mode: "660"
    - makedirs: True
    - recuse:
      - user
      - group
      - mode
    - require:
      - git: discourse


/srv/discourse/app/config/unicorn.conf.rb:
  file.replace:
    - pattern: '^listen.+$'
    - repl: 'listen "/tmp/unicorn.discourse.sock"'


/etc/systemd/system/discourse.service:
  file.managed:
    - source: salt://discourse/config/discourse.service

  cmd.run:
    - name: systemctl daemon-reload
    - onchanges:
      - file: /etc/systemd/system/discourse.service


/etc/nginx/sites.d/discourse.conf:
  file.managed:
    - source: salt://discourse/config/discourse.nginx.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/


/etc/consul.d/service-discourse.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: discourse
        port: 9000
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul

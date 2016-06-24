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
      - nodejs
      - npm

  user.present:
    - home: /srv/discourse

  git.latest:
    - name: https://github.com/discourse/discourse.git
    - rev: v1.5.3
    - target: /srv/discourse/app
    - user: discourse
    - require:
      - pkg: discourse
      - user: discourse


discourse-ruby-install:
  cmd.run:
    - name: "bundle install --deployment --without test --without development"
    - user: discourse
    - cwd: /srv/discourse/app
    - onchanges:
      - git: discourse
      - user: discourse


discourse-node-install:
  cmd.run:
    - name: "npm install -g svgo phantomjs-prebuilt"
    - cwd: /srv/discourse/app
    - user: discourse
    - require:
      - user: discourse
    - onchanges:
      - git: discourse


discourse-migrate:
  cmd.run:
    - name: "bundle exec rake db:migrate"
    - cwd: /srv/discourse/app
    - user: discourse
    - env:
      - RAILS_ENV: 'production'
    - require:
      - user: discourse
      - cmd: consul-template
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

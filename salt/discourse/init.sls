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
      - DISCOURSE_DB_SOCKET: ''
      - DISCOURSE_DB_USERNAME: 'discourse'
      - DISCOURSE_DB_PASSWORD: '{{ pillar["postgresql-users"]["discourse"] }}'
      - DISCOURSE_DB_HOST: '{{ salt["mine.get"](pillar["roles"]["postgresql"], "psf_internal").values()|first|first }}'
      - DISCOURSE_DB_PORT: '{{ pillar["postgresql"]["port"] }}'
    - require:
      - user: discourse
    - onchanges:
      - cmd: discourse-ruby-install

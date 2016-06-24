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

  git.latest:
    - name: https://github.com/discourse/discourse.git
    - rev: v1.5.3
    - target: /srv/discourse
    - require:
      - pkg: discourse


dicourse-ruby-install:
  cmd.run:
    - name: "bundle install --deployment --without test --without development"
    - cwd: /srv/discourse
    - onchanges:
      - git: discourse


discourse-node-install:
  cmd.run:
    - name: "npm install -g svgo phantomjs-prebuilt"
    - cwd: /srv/discourse
    - onchanges:
      - git: discourse


discourse-migrate:
  cmd.run:
    - name: "bundle exec rake db:migrate"
    - cwd: /srv/discourse
    - onchanges:
      - cmd: discourse-ruby-install

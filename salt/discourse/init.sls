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

  git.latest:
    - name: https://github.com/discourse/discourse.git
    - rev: v1.5.3
    - target: /srv/discourse
    - require:
      - pkg: discourse

  cmd.run:
    - name: "bundle install"
    - cwd: /srv/discourse
    - onchanges:
      - git: discourse

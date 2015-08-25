slack-irc:
  pkg.installed:
    - pkgs:
      - nodejs
      - npm

  user.present:
    - name: slack-irc
    - home: /srv/slack-irc/
    - createhome: True

  npm.installed:
    - pkgs:
      - slack-irc
    - user: slack-irc
    - require:
      - user: slack-irc

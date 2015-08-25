{% set secrets = pillar["slack-secrets"] %}

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

  file.managed:
    - name: /etc/slack-irc.json
    - source: salt://slack-irc/config/slack-irc.json.jinja
    - context:
        slack_token: {{ secrets['slack_token'] }}
        irc_password: {{ secrets['irc_password'] }}
    - template: jinja
    - user: slack-irc
    - mode: 640
    - show_diff: False
    - require:
      - user: slack-irc

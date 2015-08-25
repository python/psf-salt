{% set secrets = pillar["slack-secrets"] %}

nodesource:
  pkgrepo.managed:
    - name: "deb [arch=amd64] https://deb.nodesource.com/iojs_3.x {{ grains['oscodename'] }} main"
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: salt://slack-irc/config/APT-GPG-KEY-NODESOURCE
    - order: 2

slack-irc:
  pkg.installed:
    - pkgs:
      - iojs
    - require:
      - pkgrepo: nodesource

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

  service.running:
    - reload: True
    - require:
      - file: /etc/init/slack-irc.conf
      - file: slack-irc
    - watch:
      - file: /etc/init/slack-irc.conf
      - file: slack-irc


/etc/init/slack-irc.conf:
  file.managed:
    - source: salt://salt-irc/config/slack-irc.upstart.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: slack-irc
      - npm: slack-irc
      - user: slack-irc

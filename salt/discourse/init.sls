discourse:
  # We don't actually need a copy of the source here, we have it only so that
  # we can trigger a rebuild whenever this gets updated.
  git.latest:
    - name: https://github.com/discourse/discourse.git
    - branch: stable
    - target: /opt/discourse/src
    - require:
      - pkg: discourse-docker

  cmd.run:
    - name: '/opt/discourse/launcher destroy web & /opt/discourse/launcher bootstrap web'
    - cwd: /opt/discourse/
    - require:
      - cmd: consul-template
    - onchanges:
      - git: discourse


discourse-docker:
  pkg.installed:
    - pkgs:
      - git

  git.latest:
    - name: https://github.com/discourse/discourse_docker.git
    - target: /opt/discourse
    - require:
      - pkg: discourse-docker


/opt/discourse/containers/data.yml:
  file.managed:
    - source: salt://discourse/configs/data-container.yml
    - user: root
    - group: root
    - mode: 640
    - require:
      - git: discourse-docker

  cmd.run:
    - name: '/opt/discourse/launcher destroy data & /opt/discourse/launcher bootstrap data'
    - cwd: /opt/discourse/
    - onchanges:
      - file: /opt/discourse/containers/data.yml


/usr/share/consul-template/templates/discourse-web-container.yml:
  file.managed:
    - source: salt://discourse/configs/container.yml
    - template: jinja
    - user: root
    - group: root
    - mode: 640
    - show_diff: False
    - require:
      - git: discourse-docker


/etc/consul-template.d/discourse.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/discourse-web-container.yml
        destination: /opt/discourse/containers/web.yml
        command: "true"
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template

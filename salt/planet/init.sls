include:
  - nginx

git:
  pkg.installed

docker.io:
  pkg.installed
docker:
  service.running:
    - enable: True

planet-user:
  user.present:
    - name: planet
    - createhome: False
    - groups:
      - docker
    - require:
      - pkg: docker.io

/etc/nginx/sites.d/planet.conf:
  file.managed:
    - source: salt://planet/config/nginx.planet.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/

/etc/consul.d/service-planet.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: planet
        port: 9000
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

/srv/planet/:
  file.directory:
    - user: planet
    - group: planet
    - mode: "0755"

https://github.com/python/planet:
  git.latest:
    - branch: main
    - target: /srv/planet/
    - user: planet
    - require:
      - user: planet-user
      - pkg: git
      - file: /srv/planet/

/srv/run-planet.sh:
  file.managed:
    - source: salt://planet/config/run-planet.sh.jinja
    - template: jinja
    - user: planet
    - group: planet
    - mode: "0544"
  cron.present:
    - identifier: run-planet
    - user: planet
    - minute: 37
    - hour: 1,4,7,10,13,16,19,21

{% for site, site_config in salt["pillar.get"]("planet", {}).get("sites", {}).items() %}
{{ site_config["cache"] }}:
  file.directory:
    - user: planet
    - group: planet
    - mode: "0755"
{{ site_config["output"] }}:
  file.directory:
    - user: planet
    - group: planet
    - mode: "0755"
{{ site_config["output"] }}/static:
  file.symlink:
    - target: /srv/planet/static
    - user: planet
    - group: planet
    - mode: "0644"
    - require:
      - file: {{ site_config["output"] }}
{% endfor %}

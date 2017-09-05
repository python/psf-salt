include:
  - nginx

git:
  pkg.installed

planet-user:
  user.present:
    - name: planet
    - createhome: False

/etc/nginx/sites.d/planet.conf:
  file.managed:
    - source: salt://planet/config/nginx.planet.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - file: /etc/nginx/sites.d/

/srv/planet/:
  file.directory:
    - user: planet
    - group: planet
    - mode: 755

https://github.com/python/planet:
  git.latest:
    - target: /srv/planet/
    - user: planet
    - require:
      - user: planet-user
      - pkg: git
      - file: /srv/planet/

/srv/cache/:
  file.directory:
    - user: planet
    - group: planet
    - mode: 770

/srv/run-planet.sh:
  file.managed:
    - source: salt://planet/config/run-planet.sh.jinja
    - template: jinja
    - user: planet
    - group: planet
    - mode: 544
  cron.present:
    - identifier: run-planet
    - user: planet
    - minute: 37
    - hour: 1,4,7,10,13,16,19,21

{% for site in salt["pillar.get"]("planet_sites") %}
/srv/{{ site }}/:
  file.directory:
    - user: planet
    - group: planet
    - mode: 755
/srv/{{site }}/static:
  file.symlink:
    - target: /srv/planet/static
    - user: planet
    - group: planet
    - mode: 644
    - require:
      file: /srv/{{ site }}/
{% endfor %}

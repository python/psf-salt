include:
  - nginx
  - tls.lego

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
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/

lego_bootstrap:
  cmd.run:
    - name: /usr/local/bin/lego -a --email="infrastructure-staff@python.org" {% if pillar["dc"] == "vagrant" %}--server=https://salt-master.vagrant.psf.io:14000/dir{% endif %} --domains="{{ grains['fqdn'] }}" {%- for domain in pillar['planet']['subject_alternative_names']  %} --domains {{ domain }}{%- endfor %} --http --path /etc/lego --key-type ec256 run
    - creates: /etc/lego/certificates/{{ grains['fqdn'] }}.json

lego_renew:
  cron.present:
    - name: sudo -u nginx /usr/local/bin/lego -a --email="infrastructure-staff@python.org" {% if pillar["dc"] == "vagrant" %}--server=https://salt-master.vagrant.psf.io:14000/dir{% endif %} --domains="{{ grains['fqdn'] }}" {%- for domain in pillar['planet']['subject_alternative_names']  %} --domains {{ domain }}{%- endfor %} --http --http.webroot /etc/lego --path /etc/lego --key-type ec256  renew --days 30 && /usr/sbin/service nginx reload
    - identifier: roundup_lego_renew
    - hour: 0
    - minute: random

lego_config:
  file.managed:
    - name: /etc/nginx/conf.d/lego.conf
    - source: salt://tls/config/lego.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - sls: tls.lego
      - cmd: lego_bootstrap

/srv/planet/:
  file.directory:
    - user: planet
    - group: planet
    - mode: "0755"

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
    - mode: "0770"

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

{% for site in salt["pillar.get"]("planet", {}).get("sites", []) %}
/srv/{{ site }}/:
  file.directory:
    - user: planet
    - group: planet
    - mode: "0755"
/srv/{{ site }}/static:
  file.symlink:
    - target: /srv/planet/static
    - user: planet
    - group: planet
    - mode: "0644"
    - require:
      - file: /srv/{{ site }}/
{% endfor %}

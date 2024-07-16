{% if grains["oscodename"] == "focal" %}
python-requests:
  pkg.latest:
    - name: python3-requests

python-msgpack:
  pkg.latest:
    - name: python3-msgpack

{% elif grains["oscodename"] in ["jammy", "noble"] %}
python-requests:
  pkg.latest:
    - name: python3-requests

python-msgpack:
  pkg.latest:
    - name: python3-msgpack

{% else %}
python-requests:
  pkg.latest

python-msgpack:
  pkg.latest
{% endif %}

python3-pip:
  pkg.latest

{% if grains["os"] == "Ubuntu" %}
{# TODO: can be removed after anytime after 2024-07-16 #}
remove_old_salt_repo:
  file.absent:
    - name: /etc/apt/sources.list.d/saltstack.list

salt-repo:
  pkgrepo.managed:
    - humanname: repo.saltstack.org
    {% if grains["oscodename"] == "focal" %}
    - name: deb https://archive.repo.saltproject.io/py3/ubuntu/20.04/{{ grains["osarch"] }}/archive/3004 focal main
    - key_url: https://archive.repo.saltproject.io/py3/ubuntu/20.04/{{ grains["osarch"] }}/archive/3004/salt-archive-keyring.gpg
    {% elif grains["oscodename"] == "jammy" %}
    - name: deb [signed-by=/etc/apt/keyrings/salt-archive-keyring.gpg arch={{ grains["osarch"] }}] https://repo.saltproject.io/salt/py3/ubuntu/22.04/{{ grains["osarch"] }}/3007 jammy main
    - key_url: https://repo.saltproject.io/salt/py3/ubuntu/22.04/{{ grains["osarch"] }}/SALT-PROJECT-GPG-PUBKEY-2023.gpg
    - aptkey: False
    {% elif grains["oscodename"] == "noble" %}
    - name: deb [signed-by=/etc/apt/keyrings/salt-archive-keyring.gpg arch={{ grains["osarch"] }}] https://repo.saltproject.io/salt/py3/ubuntu/24.04/{{ grains["osarch"] }}/3007 noble main
    - key_url: https://repo.saltproject.io/salt/py3/ubuntu/24.04/{{ grains["osarch"] }}/SALT-PROJECT-GPG-PUBKEY-2023.gpg
    - aptkey: False
    {% else %}
    - name: deb http://archive.repo.saltstack.com/py3/ubuntu/{{ grains["osrelease"] }}/{{ grains["osarch"] }}/2018.3 {{ grains["oscodename"] }} main
    - key_url: https://archive.repo.saltstack.com/py3/ubuntu/18.04/amd64/2018.3/SALTSTACK-GPG-KEY.pub
    {% endif %}
    - file: /etc/apt/sources.list.d/salt.list
{% endif %}


{% if salt["match.compound"](pillar["roles"]["salt-master"]["pattern"]) %}
include:
  - tls.lego

salt-master-pkg:
  pkg.latest:
    - name: salt-master

/etc/salt/master.d/roles.conf:
  file.managed:
    - source: salt://base/config/salt-roles.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - order: last

salt-master:
  service.running:
    - enable: True
    - restart: True
    - order: last
    - watch:
      - file: /etc/salt/master.d/roles.conf

/etc/lego/.well-known/acme-challenge/sentinel:
  file.managed:
    - contents: "OK"
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - sls: tls.lego

/etc/nginx/sites.d/letsencrypt-well-known.conf:
  file.managed:
    - source: salt://base/config/letsencrypt-well-known-nginx.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/

/etc/consul.d/service-letsencrypt-well-known.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: letsencrypt-well-known
        port: 9000
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

/srv/public:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"

/srv/public/psf_known_hosts:
  file.managed:
    - source: salt://base/config/known_hosts.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"

/srv/public/salt-server-list.rst:
  file.managed:
    - source: salt://base/config/salt-server-list.rst.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"

/etc/nginx/sites.d/publish-files.conf:
  file.managed:
    - source: salt://base/config/publish-files-nginx.conf
    - user: root
    - group: root
    - mode: "0644"
    - require:
       - file: /etc/nginx/sites.d/
       - file: /srv/public

/etc/consul.d/service-publish-files.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: publish-files
        port: 9001
    - user: root
    - group: root
    - mode: "0644"
    - require:
       - pkg: consul-pkgs


{% endif %}

salt-minion-pkg:
  pkg.latest:
    - name: salt-minion

/etc/salt/minion.d/mine.conf:
  file.managed:
    - contents: "mine_interval: 5"
    - user: root
    - group: root
    - mode: "0640"

salt-minion:
  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/salt/minion.d/mine.conf

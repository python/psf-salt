{% if pillar.get('pebble', default={'enabled': False}).enabled %}
pebble-build-deps:
  pkg.installed:
    - pkgs:
      - golang
      - git

pebble-golang-workspace:
  file.directory:
    - name: /usr/local/golang/pebble
    - makedirs: True

pebble-source:
   git.latest:
     - name: https://github.com/letsencrypt/pebble.git
     - force_reset: remote-changes
     - target: /usr/local/src/pebble
     - require:
       - pkg: pebble-build-deps

pebble-build:
  cmd.run:
    - creates: /usr/local/golang/pebble/bin/pebble
    - name: go install ./cmd/pebble
    - cwd: /usr/local/src/pebble
    - env:
      - GOPATH: /usr/local/golang/pebble
    - require:
      - git: pebble-source
      - file: pebble-golang-workspace

pebble-install:
  file.copy:
    - name: /usr/local/bin/pebble
    - source: /usr/local/golang/pebble/bin/pebble
    - mode: "0755"

pebble-config:
  file.managed:
    - name: /etc/pebble-config.json
    - source: salt://tls/config/pebble-config.json

pebble-service:
  file.managed:
    - name: /lib/systemd/system/pebble.service
    - source: salt://tls/config/pebble.service
    - mode: "0644"

  service.running:
    - name: pebble
    - enable: True
    - restart: True
    - require:
      - file: pebble-install
      - file: /etc/pebble-config.json
      - file: /etc/ssl/private/salt-master.vagrant.psf.io.pem
    - watch:
      - file: /etc/pebble-config.json
      - file: /etc/ssl/certs/PSF_CA.pem
      - file: /etc/ssl/private/salt-master.vagrant.psf.io.pem
{% endif %}

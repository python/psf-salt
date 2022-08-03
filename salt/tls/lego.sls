include:
  - nginx

crypto_packages:
  pkg.installed:
    - pkgs:
      - openssl

generate_dhparams:
  cmd.run:
    - name: openssl dhparam -out /etc/ssl/private/dhparams.pem 4096
    - creates: /etc/ssl/private/dhparams.pem
    - require:
      - pkg: crypto_packages

lego_extract:
  archive.extracted:
    - name: /usr/local/bin/
    - if_missing: /usr/local/bin/lego
    {% if grains.osarch == 'amd64' %}
    - source: https://github.com/go-acme/lego/releases/download/v4.8.0/lego_v4.8.0_linux_amd64.tar.gz
    - source_hash: sha256=e8a0d808721af53f64977d4c4811e596cb273e1b950fadd5bf39b6781d2c311c
    {% elif grains.osarch == 'arm64' %}
    - source: https://github.com/go-acme/lego/releases/download/v4.8.0/lego_v4.8.0_linux_arm64.tar.gz
    - source_hash: sha256=b2f43fdccdd434e00547750f40e4203f1a5fdcd5186764d3c52a05635600a220
    {% endif %}
    - archive_format: tar
    - tar_options: -J --strip-components=1 lego
    - enforce_toplevel: False

/etc/lego:
  file.directory:
    - user: root
    - group: root
    - mode: "0755"

/etc/lego/.well-known/acme-challenge:
  file.directory:
    - user: nginx
    - group: root
    - mode: "0750"
    - makedirs: True
    - require:
      - file: /etc/lego

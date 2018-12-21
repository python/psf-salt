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
    - source: https://github.com/xenolf/lego/releases/download/v1.0.1/lego_v1.0.1_linux_amd64.tar.gz
    - source_hash: sha256=3995c89e47caaccf1a589f01923cc0d4124861433d0a1ca9534a06bb4557a80e
    - archive_format: tar
    - tar_options: -J --strip-components=1 lego
    - enforce_toplevel: False

/etc/lego:
  file.directory:
    - user: root
    - group: root
    - mode: 0755

/etc/lego/.well-known/acme-challenge:
  file.directory:
    - user: nginx
    - group: root
    - mode: 0750
    - makedirs: True
    - require:
      - file: /etc/lego

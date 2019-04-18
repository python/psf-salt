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
    - source: https://github.com/xenolf/lego/releases/download/v1.2.1/lego_v1.2.1_linux_amd64.tar.gz
    - source_hash: sha256=ee8252c442e13cac40a2dcdeead9cc5812c44c393e72b39695d428b9275a0509
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

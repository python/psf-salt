default-jre-headless:
  pkg.installed

elasticsearch-repo:
  pkgrepo.managed:
    -name: deb http://packages.elasticsearch.org/elasticsearch/1.4/debian stable main
    -key_url: http://packages.elasticsearch.org/GPG-KEY-elasticsearch

elasticsearch:
  pkg.installed:
    - require:
      - pkgrepo: elasticsearch-repo
      - pkg: default-jre-headless
  service.running:
    - watch:
      - file: /etc/elasticsearch/elasticsearch.yml
    - require:
      - pkg: elasticsearch

/etc/elasticsearch/elasticsearch.yml:
  file.managed:
    - source: salt://elasticsearch/config/elasticsearch.yml.jinja
    - template: jinja
    - require:
      - pkg: elasticsearch

default-jre-headless:
  pkg.installed

elasticsearch-repo:
  pkgrepo.managed:
    - name: deb http://packages.elasticsearch.org/elasticsearch/1.4/debian stable main
    - key_url: http://packages.elasticsearch.org/GPG-KEY-elasticsearch
    - file: /etc/apt/sources.list.d/elasticsearch.list
    - require_in:
      - pkg: elasticsearch

elasticsearch:
  pkg.installed:
    - require:
      - pkg: default-jre-headless
  service.running:
    - watch:
      - file: /etc/elasticsearch/*.yml

/etc/elasticsearch/elasticsearch.yml:
  file.managed:
    - source: salt://elasticsearch/config/elasticsearch.yml.jinja
    - template: jinja
    - require:
      - pkg: elasticsearch

/etc/elasticsearch/logging.yml:
  file.managed:
    - source: salt://elasticsearch/config/logging.yml
    - require:
      - pkg: elasticsearch

/etc/consul.d/service-elasticsearch.json:
  file.managed:
    - source: salt://consul/etc/service.jinja
    - template: jinja
    - context:
        name: elasticsearch
        port: 9200
    - user: root
    - group: root
    - mode: 644
    - require:
      - service: elasticsearch
      - pkg: consul

{% set data_partitions = salt["rackspace.data_partitions"]("xvdb") %}

{% if data_partitions|length() > 1 %}
This Does Not Support Multi Data Disk Servers!!!!
{% endif %}


carbon-data:
{% for partition in data_partitions %}
  blockdev.formatted:
    - name: /dev/{{ partition.partition }}
    - fs_type: ext4

  mount.mounted:
    - name: /srv/carbon
    - device: /dev/{{ partition.partition }}
    - fstype: ext4
    - mkmnt: True
    - opts: "data=writeback,noatime,nodiratime"
    - require:
      - blockdev: carbon-data
{% endfor %}

  file.directory:
    - name: /srv/carbon/whisper
    - user: root
    - group: root
    - mode: 777
    - makedirs: True
    {% if data_partitions %}
    - require:
      - mount: carbon-data
    {% endif %}


graphite-carbon:
  pkg.installed


/etc/carbon/carbon.conf:
  file.managed:
    - source: salt://monitoring/server/configs/carbon.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: graphite-carbon


/etc/carbon/storage-schemas.conf:
  file.managed:
    - source: salt://monitoring/server/configs/storage-schemas.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: graphite-carbon


/etc/default/graphite-carbon:
  file.managed:
    - source: salt://monitoring/server/configs/grapite-carbon.default
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: graphite-carbon


carbon-cache:
  service.running:
    - enable: True
    - restart: True
    - watch:
      - file: /etc/carbon/carbon.conf
      - file: /etc/carbon/storage-schemas.conf
      - file: /etc/default/graphite-carbon
    - require:
      - pkg: graphite-carbon
      - file: /etc/carbon/carbon.conf
      - file: /etc/carbon/storage-schemas.conf
      - file: carbon-data

{% if grains["oscodename"] == ["jammy", "noble"] %}
datadogkey:
  file.managed:
    - name: /etc/apt/keyrings/datadog.asc
    - mode: "0644"
    - source: salt://datadog/config/APT-GPG-KEY-DATADOG

datadog_repo:
  pkgrepo.managed:
    - name: "deb [signed-by=/etc/apt/keyrings/datadog.asc arch={{ grains["osarch"] }}]  https://apt.datadoghq.com stable 6"
    - aptkey: False
    - file: /etc/apt/sources.list.d/datadog.list
    - require:
      - file: datadogkey
{% else %}
datadog_repo:
  pkgrepo.managed:
    - name: "deb https://apt.datadoghq.com stable 6"
    - file: /etc/apt/sources.list.d/datadog.list
    - key_url: salt://datadog/config/APT-GPG-KEY-DATADOG
{% endif %}

{% set in_datadog_tags = pillar.get('datadog_tags', []) + grains.get('datadog_tags', []) + grains.get('datadog_tags_from_metadata', []) %}
{% set datadog_tags = [] %}
{% for tag in in_datadog_tags if tag not in datadog_tags %}
  {% do datadog_tags.append(tag) %}
{% endfor %}

/usr/share/datadog:
  file.recurse:
    - source: salt://datadog/files

{% if 'datadog_api_key' in pillar %}
datadog-agent:
  pkg:
    - installed
    - require:
      - pkgrepo: datadog_repo
      - mount: {{ swap_path }}
  service:
    - running
    - enable: True
    - require:
      - file: /etc/datadog-agent/datadog.yaml
      - pkg: datadog-agent
    - watch:
      - file: /etc/datadog-agent/datadog.yaml

/etc/datadog-agent/datadog.yaml:
  file.managed:
    - user: root
    - group: root
    - mode: "0644"
    - template: jinja
    - source: salt://datadog/config/datadog.yaml.jinja
    - context:
        api_key: {{ pillar.get('datadog_api_key') }}
        tags: {{ datadog_tags }}
{% endif %}

{% set minion_id = grains['id'] %}
{% set fqdn = grains['fqdn'] %}
{% set api_key = pillar.get('datadog_api_key') %}
{% set app_key = pillar.get('datadog_app_key') %}
{% set datadog_locations = salt['http.query']('https://api.datadoghq.com/api/v1/synthetics/locations', header_list=['DD-API-KEY: ' + api_key, 'DD-APPLICATION-KEY: ' + app_key], decode=True) %}
{% set existing_monitors = salt['http.query']('https://api.datadoghq.com/api/v1/synthetics/tests', header_list=['DD-API-KEY: ' + api_key, 'DD-APPLICATION-KEY: ' + app_key], decode=True) %}
{% set monitor_name = minion_id + ' HTTP Health' %}
{% set monitor_exists = existing_monitors.get('dict', {}).get('tests', []) | selectattr('name', 'equalto', monitor_name) | list | length > 0 %}

#notable this fails to capture multi-host minions (bugs has bugs.python, bugs.jython, bugs.roundup and
# codespeed has speed.python and speed.pypy)
{% set web_roles = ['loadbalancer', 'docs', 'downloads', 'hg', 'moin', 'planet', 'bugs', 'buildbot', 'codespeed', 'pythontest'] %}
{% set matched_roles = [] %}
{% for role in web_roles %}
  {% if salt["match.compound"](pillar["roles"][role]["pattern"]) %}
    {% set _ = matched_roles.append(role) %}
  {% endif %}
{% endfor %}
{% set is_web_minion = matched_roles|length > 0 %}
{% set is_loadbalancer = 'loadbalancer' in matched_roles %}

# hit the haproxy status page for loadbalancers or the root for other web minions
# web minions also haev _haproxy_status endpoint but im not sure if that needs to be checked?
{% set health_url = "https://" + fqdn + ("/_haproxy_status" if is_loadbalancer else "/") %}

{% if is_web_minion and api_key and app_key and not monitor_exists %}
create-synthetics-monitor-{{ minion_id }}:
  http.query:
    - name: https://api.datadoghq.com/api/v1/synthetics/tests
    - method: POST
    - header_list:
        - "DD-API-KEY: {{ api_key }}"
        - "DD-APPLICATION-KEY: {{ app_key }}"
        - "Content-Type: application/json"
    - data: |
        {
          "name": "{{ minion_id }} HTTP Health",
          "type": "api",
          "subtype": "http",
          "config": {
            "request": {
              "url": "{{ health_url }}",
              "method": "GET",
              "timeout": 30
            },
            "assertions": [
              {
                "type": "statusCode",
                "operator": "is",
                "target": 200
              },
              {
                "type": "responseTime",
                "operator": "lessThan", 
                "target": 2000
              }
            ]
          },
          "locations": {{ datadog_locations.get('dict', {}).get('locations', []) | map(attribute='id') | list | tojson }},
          "options": {
            "tick_every": 60,
            "min_failure_duration": 180,
            "min_location_failed": 5,
            "retry": {
              "count": 1,
              "interval": 300
            }
          },
          "message": "{{ minion_id }} is down in 5 or more locations! @pagerduty-Datadog",
          "tags": [
            "minion_id:{{ minion_id }}",
            "auto_created:salt.synthetics.sls"
          ]
        }
    - status: 200
{% endif %}

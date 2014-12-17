{% set ocsp =  salt["pillar.get"]("tls:ocsp") %} # "

include:
  - monitoring.client.collectors.haproxy
  - nginx


haproxy:
  pkgrepo.managed:
    - name: "deb http://ppa.launchpad.net/vbernat/haproxy-1.5/ubuntu {{ grains.oscodename }} main"
    - file: /etc/apt/sources.list.d/haproxy.list
    - key_url: salt://haproxy/config/APT-GPG-KEY-HAPROXY
    - order: 2
    - require_in:
      - pkg: haproxy

  pkg:
    - installed

  service.running:
    - enable: True
    - reload: True
    - require:
      - pkg: haproxy
      - cmd: consul-template
    - watch:
      - file: /etc/ssl/private/*.pem
      - file: /etc/haproxy/fastly_token


/etc/haproxy/fastly_token:
  file.managed:
    - contents_pillar: fastly:token
    - user: root
    - group: root
    - mode: 640
    - show_diff: False
    - require:
      - pkg: haproxy


/usr/share/consul-template/templates/haproxy.cfg:
  file.managed:
    - source: salt://haproxy/config/haproxy.cfg.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul-template


/etc/consul-template.d/haproxy.json:
  file.managed:
    - source: salt://consul/etc/consul-template/template.json.jinja
    - template: jinja
    - context:
        source: /usr/share/consul-template/templates/haproxy.cfg
        destination: /etc/haproxy/haproxy.cfg
        command: service haproxy reload
    - user: root
    - group: root
    - mode: 640
    - require:
      - pkg: consul-template


/usr/local/bin/haproxy-ocsp:
  {% if ocsp %}
  file.managed:
    - source: salt://haproxy/bin/haproxy-ocsp
    - user: root
    - group: root
    - mode: 755
  {% else %}
  file.absent
  {% endif %}


haproxy-ocsp:
  {% if ocsp %}
  cron.present:
    - minute: 0
    - hour: 0
  {% else %}
  cron.absent:
  {% endif %}
    - name: /usr/local/bin/haproxy-ocsp{% for o in ocsp %} /etc/ssl/private/{{ o }}.pem{% endfor %} >> /var/log/haproxy-ocsp.log 2>&1
    - identifier: haproxy-ocsp
    - user: root
    - require:
      - pkg: haproxy
      - file: /usr/local/bin/haproxy-ocsp


/etc/logrotate.d/haproxy-ocsp:
  file.managed:
    - source: salt://haproxy/config/haproxy-ocsp-logrotate.conf


{% if not ocsp %}
{% for name in salt["pillar.get"]("tls:certs", {}) %}  # " Syntax Hack
/etc/ssl/private/{{ name }}.pem.ocsp:
  file.absent:
    - require_in:
      - service: haproxy
{% endfor %}
{% endif %}


/etc/nginx/sites.d/spdy.conf:
  file.managed:
    - source: salt://haproxy/config/nginx-spdy.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - sls: nginx


/etc/nginx/sites.d/redirect.conf:
  file.managed:
    - source: salt://haproxy/config/nginx-redirect.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - sls: nginx

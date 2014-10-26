{% set ocsp =  salt["pillar.get"]("tls:ocsp") %} # "

include:
  - monitoring.client.collectors.haproxy


haproxy:
  pkgrepo.managed:
    - ppa: vbernat/haproxy-1.5
    - keyid: CFFB779AADC995E4F350A060505D97A41C61B9CD
    - require_in:
      - pkg: haproxy

  pkg:
    - installed

  service.running:
    - enable: True
    - reload: True
    - require:
      - pkg: haproxy
      - service: haproxy-consul
    - watch:
      - file: /etc/ssl/private/*.pem
      - file: /etc/haproxy/fastly_token


/etc/haproxy/haproxy.cfg.tmpl:
  file.managed:
    - source: salt://haproxy/config/haproxy.cfg.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: haproxy
      - file: /etc/ssl/private/*.pem


/etc/haproxy/fastly_token:
  file.managed:
    - contents_pillar: fastly:token
    - user: root
    - group: root
    - mode: 640
    - show_diff: False
    - require:
      - pkg: haproxy


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


haproxy-consul:
  file.managed:
    - name: /etc/init/haproxy-consul.conf
    - source: salt://consul/init/consul-template.conf.jinja
    - template: jinja
    - context:
        templates:
          - "/etc/haproxy/haproxy.cfg.tmpl:/etc/haproxy/haproxy.cfg:chmod 644 /etc/haproxy/haproxy.cfg && service haproxy reload"
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: consul

  service.running:
    - enable: True
    - restart: True
    - require:
      - pkg: consul
    - watch:
      - file: haproxy-consul
      - file: /etc/consul-template.conf
      - file: /etc/haproxy/haproxy.cfg.tmpl

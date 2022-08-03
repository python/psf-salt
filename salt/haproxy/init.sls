{% set ocsp =  salt["pillar.get"]("tls:ocsp") %} # "

include:
  - nginx

/usr/sbin/policy-rc.d:
  file.managed:
    - user: root
    - group: root
    - mode: "0755"
    - contents: |
         #!/bin/bash
         exit 101

/etc/nginx/conf.d/default.conf:
  file.absent

haproxy:
  pkg:
    - installed
    - require:
      - pkg: rsyslog
      - file: /usr/sbin/policy-rc.d

  service.running:
    - enable: True
    - reload: True
    - require:
      - pkg: haproxy
      - cmd: consul-template
      - service: rsyslog
    - watch:
      - file: /etc/ssl/private/*.pem
      - file: /etc/haproxy/fastly_token
      - file: /etc/haproxy/our_domains


/etc/haproxy/fastly_token:
  file.managed:
    - contents_pillar: fastly:token
    - user: root
    - group: root
    - mode: "0640"
    - show_diff: False
    - require:
      - pkg: haproxy

/etc/haproxy/our_domains:
  file.managed:
    - source: salt://haproxy/config/our_domains.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: haproxy


/usr/share/consul-template/templates/haproxy.cfg:
  file.managed:
    - source: salt://haproxy/config/haproxy.cfg.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs


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
    - mode: "0640"
    - require:
      - pkg: consul-pkgs


/usr/local/bin/haproxy-ocsp:
  {% if ocsp %}
  file.managed:
    - source: salt://haproxy/bin/haproxy-ocsp
    - user: root
    - group: root
    - mode: "0755"
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


/etc/nginx/sites.d/http2.conf:
  file.managed:
    - source: salt://haproxy/config/nginx-http2.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/


/etc/nginx/sites.d/redirect.conf:
  file.managed:
    - source: salt://haproxy/config/nginx-redirect.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/

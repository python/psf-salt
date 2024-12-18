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

/etc/consul.d/recursors.json:
  file.managed:
    - source: salt://haproxy/config/consul-recursors.json
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - pkg: consul-pkgs

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
      - service: rsyslog
    - watch:
      - file: /etc/ssl/private/*.pem
      - file: /etc/haproxy/fastly_token
      - file: /etc/haproxy/our_domains
      - file: /etc/haproxy/haproxy.cfg


/etc/haproxy/fastly_token:
  file.managed:
    - contents_pillar: fastly:tokens
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


/etc/haproxy/haproxy.cfg:
  file.managed:
    - source: salt://haproxy/config/haproxy.cfg.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"

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


/etc/nginx/sites.d/redirect.conf:
  file.managed:
    - source: salt://haproxy/config/nginx-redirect.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"
    - require:
      - file: /etc/nginx/sites.d/

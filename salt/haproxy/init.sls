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
    - watch:
      - file: /etc/haproxy/haproxy.cfg
      - file: /etc/ssl/private/*.pem
      - file: /etc/haproxy/fastly_token
    - require:
      - pkg: haproxy


/etc/haproxy/haproxy.cfg:
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

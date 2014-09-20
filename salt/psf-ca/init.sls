{% for name in salt["pillar.get"]("psf-ca-server-certificate", {}) %}
/etc/ssl/private/{{ name }}:
  file.managed:
    - contents_pillar: psf-ca-server-certificate:{{ name }}
    - user: root
    - group: ssl-cert
    - mode: 640
{% endfor %}

/etc/ssl/certs/psf-ca.pem:
  file.managed:
    - contents_pillar: psf-ca:ca.crt
    - user: root
    - group: root
    - mode: 644


/etc/ssl/crl:
  file.directory:
    - user: root
    - group: root
    - mode: 755


/etc/ssl/crl/psf-crl.pem:
  file.managed:
    - contents_pillar: psf-ca:crl.pem
    - user: root
    - group: root
    - mode: 644
    - requires:
      - file: /etc/ssl/crl

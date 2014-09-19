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

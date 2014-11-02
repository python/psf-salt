include:
  - nginx

/etc/nginx/sites.d/pythontest.conf:
  file.managed:
    - source: salt://pythontest/config/nginx.pythontest.conf.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
  require:
    - file: /etc/nginx/sites.d/

/srv/python-testdata/tls/:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/srv/python-testdata/tls/self-signed-cert.pem:
  file.managed:
    - source: salt://pythontest/config/self-signed-cert.pem
    - user: root
    - group: root
    - mode: 644
  require:
    - file: /srv/python-testdata/tls/

/srv/python-testdata/tls/self-signed-key.pem:
  file.managed:
    - source: salt://pythontest/config/self-signed-key.pem
    - user: root
    - group: root
    - mode: 644
  require:
    - file: /srv/python-testdata/tls/

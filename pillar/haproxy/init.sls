haproxy:
  binds:
    http:
      bind: :51386
      proto: http
    https:
      bind: :38303 ssl crt /etc/ssl/private/ev.python.org.pem
      proto: https
    hg:
      bind: :44931 ssl crt /etc/ssl/private/hg.python.org.pem
      proto: https
    redirect_to_https:
      bind: :13764

  http:
    hg.python.org:
      servers:
        - name: hg.psf.io
          address: 192.168.5.6  # hg.psf.io's psf-internal address
          port: 9000

    pythonhosted.org:
      servers:
        - name: web0.pypi.io
          address: 172.16.57.8
          port: 40715
        - name: web1.pypi.io
          address: 172.16.57.9
          port: 40715
        - name: web2.pypi.io
          address: 172.16.57
          port: 40715

    test.pythonhosted.org:
      servers:
        - name: web0.pypi.io
          address: 172.16.57.8
          port: 40716
        - name: web1.pypi.io
          address: 172.16.57.9
          port: 40716
        - name: web2.pypi.io
          address: 172.16.57
          port: 40716

  tcp:
    "hg.python.org:ssh":
      bind: :44932
      servers:
        - name: hg.psf.io
          address: 192.168.5.6  # hg.psf.io's psf-internal address
          port: 22

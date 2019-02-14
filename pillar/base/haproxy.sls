haproxy:
  services:
    docs:
      domains:
        - docs.python.org
        - doc.python.org

    downloads:
      domains:
        - www.python.org
      path: /ftp/
      check: "HEAD /_check HTTP/1.1\\r\\nHost:\\ www.python.org"

  redirects:
    cheeseshop.python.org:
      target: pypi.python.org
    jobs.python.org:
      target: www.python.org/jobs/
      request_uri: False
    packages.python.org:
      target: pythonhosted.org
    planet.python.org:
      target: planetpython.org
      tls: False
    python.org:
      target: www.python.org
      hsts_subdomains: False
    pypa.io:
      target: www.pypa.io

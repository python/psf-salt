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

    pydotorg-prod:
      domains:
        - www.python.org
      verify_host: pydotorg.psf.io

    pydotorg-staging:
      domains:
        - staging.python.org
      verify_host: pydotorg.psf.io

    console:
      domains:
        - console.python.org
      check: False
      ca-file: "ca-certificates.crt"
      verify_host: www.pythonanywhere.com
      extra:
        - http-request replace-header Host ^.*$ www.pythonanywhere.com
        - "http-request deny unless { path_beg -i /static/ } or { path_beg -i /python-dot-org-console/ } or { path_beg -i /python-dot-org-live-consoles-status }"

    hg:
      domains:
        - hg.python.org

    pypa-bootstrap:
      domains:
        - bootstrap.pypa.io
      verify_host: bootstrap.pypa.psf.io
      check: "HEAD / HTTP/1.1\\r\\nHost:\\ bootstrap.pypa.io"

    speed-web:
      domains:
        - speed.python.org
      check: "HEAD / HTTP/1.1\\r\\nHost:\\ speed.python.org"

  redirects:
    python.org:
      target: www.python.org
      hsts_subdomains: False
      hpkp_subdomains: False
    pypa.io:
      target: www.pypa.io

  listens:
    hg_ssh:
      bind: :20100
      service: hg-ssh

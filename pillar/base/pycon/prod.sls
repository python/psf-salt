pycon:
  deployment: prod
  branch: production
  server_names:
    - us.pycon.org
    - pycon-prod.global.ssl.fastly.net
  use_basic_auth: True
  gunicorn_workers: 4

harden:
  umask: 022

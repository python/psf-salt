pycon:
  deployment: staging
  branch: staging
  server_names:
    - staging-pycon.python.org
    - pycon-staging.python.org
    - pycon-staging.global.ssl.fastly.net
  use_basic_auth: True
  gunicorn_workers: 2

harden:
  umask: 022

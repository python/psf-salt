pycon:
  deployment: staging
  branch: 2018
  server_names:
    - staging-pycon.python.org
    - pycon-staging.python.org
    - pycon-staging.global.ssl.fastly.net
  use_basic_auth: True
  gunicorn_workers: 2

harden:
  umask: 022

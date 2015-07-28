pycon:
  deployment: staging
  branch: salt_deploy
  server_names:
    - staging-pycon.python.org
    - pycon-staging.python.org
    - pycon-staging.global.ssl.fastly.net

harden:
  umask: 022

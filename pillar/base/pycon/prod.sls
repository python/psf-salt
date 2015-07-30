pycon:
  deployment: prod
  branch: production
  server_names:
    - us.pycon.org
    - pycon-prod.global.ssl.fastly.net
  use_basic_auth: True

harden:
  umask: 022

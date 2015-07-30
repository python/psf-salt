pycon:
  deployment: prod
  branch: production
  server_names:
    - us.pycon.org
    - pycon-prod.global.ssl.fastly.net

harden:
  umask: 022

users:
  pablogsal:
    access:
      buildbot:
        allowed: true
        sudo: true
      codespeed:
        allowed: true
        sudo: true
      docs:
        allowed: true
        groups:
        - docs
        - docsbuild
        sudo: true
      downloads:
        allowed: true
        groups:
        - downloads
        sudo: true
    fullname: Pablo Galindo
    ssh_keys:
    - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIwJt1t9vGbHVnzcsiFXWEFVS/LgZCbvk7YbZGVHGd2q

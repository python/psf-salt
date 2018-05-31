docker:
  pkgrepo.managed:
    - humanname: Docker
    - name: deb https://apt.dockerproject.org/repo ubuntu-{{ grains["oscodename"] }} main
    - file: /etc/apt/sources.list.d/docker.list
    - keyid: 58118E89F3A912897C070ADBF76221572C52609D
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - pkg: docker

  pkg.latest:
    - pkgs:
      - linux-image-extra-virtual
      - docker-engine
    - refresh: True

  service.running:
    - enable: True

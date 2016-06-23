discourse-docker:
  pkg.installed:
    - pkgs:
      - git

  git.latest:
    - name: https://github.com/discourse/discourse_docker.git
    - target: /opt/discourse
    - require:
      - pkg: discourse-docker

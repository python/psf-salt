/etc/ssh/sshd_config.d/99-hardening.conf:
  file.managed:
    - source: salt://benchmarks/configs/sshd-hardening.conf
    - user: root
    - group: root
    - mode: "0644"

ssh-reload-benchmarks:
  service.running:
    - name: ssh
    - reload: True
    - watch:
      - file: /etc/ssh/sshd_config.d/99-hardening.conf

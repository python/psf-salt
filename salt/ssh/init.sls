{% set host_keys = salt["pillar.get"]("ssh_host_keys") %}

# Ensure /run/sshd exists (tmpfs, can disappear between boots/cleanups)
/run/sshd:
  file.directory:
    - user: root
    - group: root
    - dir_mode: "0755"

{% if grains["oscodename"] in ["noble"] %}
# Noble uses socket-activated SSH
ssh.socket:
  service.running:
    - enable: True
    - require:
      - file: /run/sshd
      - file: /etc/ssh/sshd_config
{% endif %}

ssh:
  service.running:
    - enable: True
    - restart: True
    - require:
      - file: /run/sshd
{% if grains["oscodename"] in ["noble"] %}
      - service: ssh.socket
{% endif %}
    - watch:
      - file: /etc/ssh/sshd_config
      {% for fn in host_keys %}
      - file: /etc/ssh/{{ fn }}
      {% endfor %}


/etc/ssh/sshd_config:
  file.managed:
    - source: salt://ssh/configs/sshd_config.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: "0644"


/usr/lib/tmpfiles.d/sshd-priv-sep.conf:
  file.managed:
    - contents: |
        d /run/sshd 0755 root root
    - user: root
    - group: root
    - mode: "0644"


# If we have defined host keys for this server, then we want to drop them here
# instead of whatever is here by default.
{% for fn in host_keys %}
/etc/ssh/{{ fn }}:
  file.managed:
    - contents_pillar: ssh_host_keys:{{ fn }}
    - owner: root
    - group: root
  {% if fn.endswith('.pub') %}
    - mode: "0644"
  {% else %}
    - mode: "0600"
    - show_diff: False
  {% endif %}
{% endfor %}

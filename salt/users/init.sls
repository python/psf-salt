include:
  - .dotfiles

{% for user_name, user_config in salt["pillar.get"]("users", {}).items() %}
{% set admin = user_config.get("admin", false) %}
{% set access = {} %}
{% for pat, data in user_config.get("access", {}).items() if salt["match.compound"](salt["pillar.get"]("roles:" + pat + ":pattern", "devnull.psf.io")) %}  # " Syntax fix
  {% do access.update(data) %}
{% endfor %}

{% if access.get("allowed", false) or admin %}
{% if user_config.get("dotfiles") %}
  - .dotfiles.{{ user_name }}
{% endif %}
{% endif %}
{% endfor %}

/home/psf-users:
  file.directory:
    - mode: "0755"

{% for user_name, user_config in salt["pillar.get"]("users", {}).items() %}
{% set admin = user_config.get("admin", false) %}
{% set access = {} %}
{% for pat, data in user_config.get("access", {}).items() if salt["match.compound"](salt["pillar.get"]("roles:" + pat + ":pattern", "devnull.psf.io")) %}  # " Syntax fix
  {% do access.update(data) %}
{% endfor %}

{% if access.get("allowed", false) or admin %}

{% set sudoer = admin or access.get("sudo", false) %}
{{ user_name }}-user:
{% if user_config.get("packages") %}
  pkg.installed:
    - pkgs:
{% for pkg in user_config["packages"] %}
      - {{ pkg }}
{% endfor %}
{% endif %}

  user.present:
    - name: {{ user_name }}
    - fullname: {{ user_config["fullname"] }}
    - home: /home/psf-users/{{ user_name }}
    - createhome: True
    - shell: {{ user_config.get("shell", "/bin/bash") }}
{% set groups = access.get("groups", []) %}
{% if sudoer %}
  {% do groups.extend(salt["pillar.get"]("sudoer_groups", [])) %}
{% endif %}
    - groups: {{ groups }}
    - require:
      - file: /home/psf-users
{% for group in groups %}
      - group: {{ group }}
{% endfor %}
{% if user_config.get("packages") %}
      - pkg: {{ user_name }}-user
{% endif %}

{{ user_name }}-ssh_dir:
  file.directory:
    - name: /home/psf-users/{{ user_name }}/.ssh
    - user: {{ user_name }}
    - mode: "0700"
    - require:
      - user: {{ user_name }}

{{ user_name }}-ssh_key:
  file.managed:
    - name: /home/psf-users/{{ user_name }}/.ssh/authorized_keys
    - user: {{ user_name }}
    - mode: "0600"
    - source: salt://users/config/authorized_keys.jinja
    - template: jinja
    - context:
        ssh_keys: {{ user_config["ssh_keys"] }}
    - require:
      - user: {{ user_name }}

{% else %}

{{ user_name }}-user:
  user.absent:
    - name: {{ user_name }}
    - purge: True


{% endif %}

{% endfor %}

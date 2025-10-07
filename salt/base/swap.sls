{% set swap_file = salt["pillar.get"]("swap_file", {}) %}
{% set swap_size = swap_file.get("swap_size", "1024") %}
{% set swap_path = swap_file.get("swap_path") %}

{% if swap_path %}
{{ swap_path }}:
  cmd.run:
    - name: |
        fallocate -l {{ swap_size }}M {{ swap_path }}
        chmod 0600 {{ swap_path }}
        mkswap {{ swap_path }}
        swapon {{ swap_path }}
    - unless: test -f {{ swap_path }}

  mount.swap:
    - persist: true
{% endif %}
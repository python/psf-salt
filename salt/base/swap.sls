{% set swap_file = salt["pillar.get"]("swap_file", {}) %}
{% set swap_size = swap_file.get("swap_size", "1024") %}
{% set swap_path = swap_file.get("swap_path") %}

{% if swap_path %}
{{ swap_path }}:
  cmd.run:
    - name: |
        swapon --show=NAME --noheadings | grep -q "^{{ swap_path }}$" && swapoff {{ swap_path }}
        rm -f {{ swap_path }}
        fallocate -l {{ swap_size }}M {{ swap_path }}
        chmod 0600 {{ swap_path }}
        mkswap {{ swap_path }}
    - unless: bash -c "[[ $(($(stat -c %s {{ swap_path }}) / 1024**2)) = {{ swap_size }} ]]"

  mount.swap:
    - persist: true
{% endif %}
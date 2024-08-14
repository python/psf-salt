{% set swapfile = salt["pillar.get"]("swapfile", {}) %}
{% set size = swapfile.get("size", "1024") %}
{% set path = swapfile.get("path", "/swapfile") %}

{{ path }}:
  cmd.run:
    - name: |
        swapon --show=NAME --noheadings | grep -q "^{{ path }}$" && swapoff {{ path }}
        rm -f {{ path }}
        fallocate -l {{ size }}M {{ path }}
        chmod 0600 {{ path }}
        mkswap {{ path }}
    - unless: bash -c "[[ $(($(stat -c %s {{ path }}) / 1024**2)) = {{ size }} ]]"

  mount.swap:
    - persist: true
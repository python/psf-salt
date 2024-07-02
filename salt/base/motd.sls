/etc/update-motd.d/10-help-text:
  file.managed:
    - mode: 0644

/etc/update-motd.d/00-header:
  file.managed:
    - mode: 0644

/etc/update-motd.d/60-unminimize:
  file.managed:
    - mode: 0644

/etc/update-motd.d/99-psf:
  file.managed:
    - mode: 0755
    - contents: |
        #!/bin/bash

        HOSTNAME=$(hostname)

        cat << 'EOF'
        ===============================
         __       _ _                                             _
        / _\ __ _| | |_    /\/\   __ _ _ __   __ _  __ _  ___  __| |
        \ \ / _` | | __|  /    \ / _` | '_ \ / _` |/ _` |/ _ \/ _` |
        _\ \ (_| | | |_  / /\/\ \ (_| | | | | (_| | (_| |  __/ (_| |
        \__/\__,_|_|\__| \/    \/\__,_|_| |_|\__,_|\__, |\___|\__,_|
                                               |___/
        ===============================

        !! WARNING !!: This host is managed by the PSF Salt infrastructure.
        Any changes made to this host may be reverted.

        Repository: https://github.com/python/psf-salt
        Hostname: $HOSTNAME

        System Information
        ------------------

        EOF

        echo ""

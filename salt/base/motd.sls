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
        DISK_USAGE=$(df -h / | tail -1 | awk '{print $5}')
        UPTIME=$(uptime -p)
        MEMORY_USAGE=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')
        LOAD_AVERAGE=$(uptime | awk -F'[a-z]:' '{ print $2}')
        IP_ADDRESS=$(hostname -I | awk '{print $1}')
        LOGGED_IN_USERS=$(who | wc -l)

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

        System Information
        ------------------

        EOF

        echo " Hostname: $HOSTNAME"
        echo " Disk Usage: $DISK_USAGE"
        echo " Uptime: $UPTIME"
        echo " Memory Usage: $MEMORY_USAGE"
        echo " Load Average: $LOAD_AVERAGE"
        echo " IP Address: $IP_ADDRESS"
        echo " Logged-in Users: $LOGGED_IN_USERS"
        echo ""

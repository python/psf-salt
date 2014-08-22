Format for pillar data:

    # Root Key, enables the state
    backup-server:
      # Volumes to format and mount
      volumes:
        # device  mount point
        /dev/sdb: /backup
      # Dictionary of directories for backup clients
      directories:
        # Directory for backup client
        /backup/postgres/archives:
          # Retention Period for backup increments (see rdiff-backup --remove-older-than)
          increment_retention: 10d
          # User the client can access the backup server as
          user: postgres
          # Authorized Key for client access
          authorized_key: ssh-rsa AAAAB3NzaC1y.. ...CXVxa6LHKJB6RDT3eYyMQSugFSCrHxQ8j/F


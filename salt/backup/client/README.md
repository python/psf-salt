
Format for pillar data:

    # Root Key, enables the state
    backup:
      # Dictionary of directories to backup
      directories:
        # A backup configuration
        postgres-archives:
          # Frequency of backup, currently {hourly, daily} are supported
          frequency: hourly
          # Duration that increments are retained, in days
          increment_retention: 365D
          # User to run backup as
          user: devpypi
          # Source Directory to backup
          source_directory: /var/lib/pgsql/9.3/backup/archives
          # Target backup server
          target_host: 172.16.57.201
          # Target directory on backup server
          target_directory: /backup/postgres/archives
          # Target user on backup server
          target_user: devpypi
        # Backup example with pre/post/cleanup scripts
        postgres-base:
          frequency: daily
          increment_retention: 30D
          user: postgres
          source_directory: /var/lib/pgsql/9.3/backups/base
          target_host: 172.16.57.201
          target_directory: /backup/postgres/base
          target_user: postgres
          # Script to run before rdiff-backup command
          pre_script: 'pg_basebackup -D /var/lib/pgsql/9.3/backups/base/$(date --iso-8601=seconds)'
          # Script to run after rdiff-backup command
          post_script: '/usr/local/backup/postgres-archives/scripts/backup.bash'
          # Cleanup script to remove old backups
          cleanup_script: 'find /var/lib/pgsql/9.3/backups/base -maxdepth 1 -type d -mtime +7 -execdir rm -rf {} \;'


#!/bin/bash


LABEL=$(/bin/date -Iminutes)

if [ -x /backup/postgresql/base_backups/current ]; then
  mv /backup/postgresql/base_backups/current /backup/postgresql/base_backups/prev
fi;

/usr/bin/pg_basebackup -D /backup/postgresql/base_backups/current -l nightly-backup-$LABEL

if [ -x /backup/postgresql/base_backups/prev ]; then
  rm -rf /backup/postgresql/base_backups/prev
fi

LATEST_BACKUP_FILE=$(grep -l "LABEL: nightly-backup-$LABEL" /backup/postgresql/wal_logs/*.backup)

/usr/bin/pg_archivecleanup /backup/postgresql/wal_logs $(/usr/bin/basename $LATEST_BACKUP_FILE)

/usr/bin/find /backup/postgresql/wal_logs/*.backup -type f -not -path $LATEST_BACKUP_FILE -delete

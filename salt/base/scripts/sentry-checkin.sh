#!/bin/bash

MINION_ID=$(salt-call --local grains.get id --out=newline_values_only)
SENTRY_INGEST_URL=$(salt-call pillar.get secrets:sentry:ingest_url --out=newline_values_only)
SENTRY_PROJECT_ID=$(salt-call pillar.get secrets:sentry:project_id --out=newline_values_only)
SENTRY_PROJECT_KEY=$(salt-call pillar.get secrets:sentry:project_key --out=newline_values_only)

MONITOR_SLUG="salt-highstate-${MINION_ID//./}"

if [ -n "$SENTRY_INGEST_URL" ] && [ -n "$SENTRY_PROJECT_ID" ] && [ -n "$SENTRY_PROJECT_KEY" ]; then
    curl -X POST "https://${SENTRY_INGEST_URL}/api/${SENTRY_PROJECT_ID}/cron/${MONITOR_SLUG}/${SENTRY_PROJECT_KEY}/" \
        --header 'Content-Type: application/json' \
        --data-raw '{"monitor_config": {"schedule": {"type": "crontab", "value": "*/15 * * * *"}, "checkin_margin": 5, "max_runtime": 30, "timezone": "UTC"}, "status": "in_progress"}' &> /dev/null

    "$@"
    COMMAND_EXIT=$?

    if [ $COMMAND_EXIT -eq 0 ]; then
        curl "https://${SENTRY_INGEST_URL}/api/${SENTRY_PROJECT_ID}/cron/${MONITOR_SLUG}/${SENTRY_PROJECT_KEY}/?status=ok" &> /dev/null
    else
        curl "https://${SENTRY_INGEST_URL}/api/${SENTRY_PROJECT_ID}/cron/${MONITOR_SLUG}/${SENTRY_PROJECT_KEY}/?status=error" &> /dev/null
    fi

    exit $COMMAND_EXIT
else
    exit 1
fi 
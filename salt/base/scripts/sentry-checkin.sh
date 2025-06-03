#!/bin/bash

MINION_ID=$(salt-call --local grains.get id --out=newline_values_only)
SENTRY_INGEST_URL=$(salt-call pillar.get sentry:ingest_url --out=newline_values_only)
SENTRY_PROJECT_ID=$(salt-call pillar.get sentry:project_id --out=newline_values_only)
SENTRY_PROJECT_KEY=$(salt-call pillar.get sentry:project_key --out=newline_values_only)

MONITOR_SLUG="salt-highstate-${MINION_ID//./}"

if [ -n "$SENTRY_INGEST_URL" ] && [ -n "$SENTRY_PROJECT_ID" ] && [ -n "$SENTRY_PROJECT_KEY" ]; then
    curl "https://${SENTRY_INGEST_URL}/api/${SENTRY_PROJECT_ID}/cron/${MONITOR_SLUG}/${SENTRY_PROJECT_KEY}/?status=in_progress" &> /dev/null

    timeout 5m salt-call state.highstate >> /var/log/salt/cron-highstate.log 2>&1
    HIGHSTATE_EXIT=$?

    if [ $HIGHSTATE_EXIT -eq 0 ]; then
        curl "https://${SENTRY_INGEST_URL}/api/${SENTRY_PROJECT_ID}/cron/${MONITOR_SLUG}/${SENTRY_PROJECT_KEY}/?status=ok" &> /dev/null
    else
        curl "https://${SENTRY_INGEST_URL}/api/${SENTRY_PROJECT_ID}/cron/${MONITOR_SLUG}/${SENTRY_PROJECT_KEY}/?status=error" &> /dev/null
    fi

    exit $HIGHSTATE_EXIT
fi 
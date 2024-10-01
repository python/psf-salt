#!/bin/bash
set -euxo pipefail

# Test the docs redirects. This script must be run from the repository root.

docker stop docs-redirects-nginx || true

docker run --name docs-redirects-nginx --detach --quiet --rm --tty \
  --mount type=bind,source=./tests/docs-redirects/nginx.conf,target=/etc/nginx/conf.d/docs.conf,readonly \
  --mount type=bind,source=./salt/docs/config/nginx.docs-redirects.conf,target=/etc/nginx/docs-redirects.conf,readonly \
  -p 10000:10000 \
  nginx:1.26.1-alpine

# Wait for the nginx container to start…
sleep 1

hurl --color --continue-on-error --variable host=http://localhost:10000 --test ./tests/docs-redirects/specs/*.hurl

docker stop docs-redirects-nginx

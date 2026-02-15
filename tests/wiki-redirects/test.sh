#!/bin/bash
set -euxo pipefail

# Test the wiki redirects. This script must be run from the repository root.

docker stop wiki-redirects-nginx || true

docker run --name wiki-redirects-nginx --detach --quiet --rm --tty \
  --mount type=bind,source=./tests/wiki-redirects/nginx.conf,target=/etc/nginx/conf.d/wiki.conf,readonly \
  --mount type=bind,source=./salt/moin/configs/wiki-redirects.conf,target=/etc/nginx/wiki-redirects.conf,readonly \
  -p 10001:10001 \
  nginx:1.26.1-alpine

# Wait for the nginx container to start…
sleep 1

hurl --color --continue-on-error --variable host=http://localhost:10001 --test ./tests/wiki-redirects/specs/*.hurl

docker stop wiki-redirects-nginx

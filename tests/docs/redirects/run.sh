#!/bin/bash

docker stop docs-redirects-nginx

set -ex  # Do this after making sure the image is stopped

docker run -d --rm -t \
  --name docs-redirects-nginx \
  -v $PWD/tests/docs/redirects/nginx.conf:/etc/nginx/conf.d/docs.conf \
  -v $PWD/salt/docs/config/nginx.docs-redirects.conf:/etc/nginx/docs-redirects.conf \
  -p 10000:10000 \
  nginx:1.26.1

# Let nginx start....
sleep 1

hurl --test --no-output $PWD/tests/docs/redirects/tests.hurl

docker stop docs-redirects-nginx

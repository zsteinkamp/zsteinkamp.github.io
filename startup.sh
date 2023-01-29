#!/bin/bash

# production mode ... set PROD_MODE in environment or in .env file
[[ -n $PROD_MODE ]] && exec /usr/local/bundle/bin/jekyll serve --host 0.0.0.0 --port 8080

# development mode
exec /usr/local/bundle/bin/jekyll serve --host 0.0.0.0 --port 8080 --livereload --livereload-port 8081 --incremental

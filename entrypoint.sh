#!/bin/bash

# Fail on any error
set -e

# Run any initialization or configuration steps here

# Start NGINX
exec nginx -g 'daemon off;'


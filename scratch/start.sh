#!/usr/bin/bash

# Run balena base image entrypoint script
/usr/bin/entry.sh echo "Running balena base image entrypoint..."

su -c "$1 && startx openbox-session" - scratch
# read -p "Press [Enter] key to start backup..."


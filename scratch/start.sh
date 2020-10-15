#!/usr/bin/bash

# Run balena base image entrypoint script
/usr/bin/entry.sh echo "Running balena base image entrypoint..."

export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

sed -i -e 's/console/anybody/g' /etc/X11/Xwrapper.config
echo "needs_root_rights=yes" >> /etc/X11/Xwrapper.config
dpkg-reconfigure xserver-xorg-legacy

xset s off
xset s noblank
xset -dpms

su -c "$1 && startx openbox-session" - scratch
# read -p "Press [Enter] key to start backup..."


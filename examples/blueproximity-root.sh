#!/bin/bash
cd /home/michael/BlueProximity
export DISPLAY=:0
export XAUTHORITY=/home/michael/.Xauthority
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
python3 proximity.py "$@"

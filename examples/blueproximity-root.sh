#!/bin/bash
# BlueProximity launcher script (root mode with X11/D-Bus support)
# Automatically detects the logged-in user for X11 and D-Bus access

# Get the logged-in user (works even when run via sudo)
LOGGED_USER="${SUDO_USER:-$USER}"
USER_HOME="$(eval echo ~${LOGGED_USER})"
USER_ID="$(id -u "${LOGGED_USER}")"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BLUEPROX_DIR="${SCRIPT_DIR%/examples}"

cd "${BLUEPROX_DIR}"
export DISPLAY="${DISPLAY:-:0}"
export XAUTHORITY="${USER_HOME}/.Xauthority"
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/${USER_ID}/bus"
python3 proximity.py "$@"

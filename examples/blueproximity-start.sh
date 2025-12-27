#!/bin/bash
# BlueProximity launcher script (user mode)
# Automatically detects the current user's home directory

USER_HOME="${HOME:-$(eval echo ~$USER)}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BLUEPROX_DIR="${SCRIPT_DIR%/examples}"

cd "${BLUEPROX_DIR}"
export DISPLAY="${DISPLAY:-:0}"
python3 proximity.py "$@"

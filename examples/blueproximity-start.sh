#!/bin/bash
cd /home/michael/BlueProximity
export DISPLAY=:0
python3 proximity.py "$@"

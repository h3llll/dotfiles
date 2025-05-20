#!/usr/bin/env sh

killall -q picom

picom 2>&1 & 

echo "picom up"

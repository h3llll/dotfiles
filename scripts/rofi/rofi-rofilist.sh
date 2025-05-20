#!/bin/sh

DIR="$HOME/rofilist"
CHOICE=$(find "$DIR" -maxdepth 1 -type f -executable -exec basename {} \; | rofi -dmenu -p "run")

[ -n "$CHOICE" ] && exec "$DIR/$CHOICE"


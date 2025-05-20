#!/usr/bin/env sh

killall -q polybar

# wait
while pgrep -u "$UID" -x polybar >/dev/null; do sleep 0.1; done

# launch
polybar 2>&1 & disown

echo "polybar up"

#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch example bar
polybar example & 
polybar bottom &
polybar top-monitor &
polybar bottom-monitor 
echo "Bars launched..."

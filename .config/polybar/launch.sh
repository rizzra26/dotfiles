#!/bin/bash

# Kill existing bars
killall -q polybar

# Wait until the processes are shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar barnya &

#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch Polybar, using default config location ~/.config/polybar/config
MONITOR=HDMI-0 polybar --reload default 2>&1 | tee -a /tmp/polybar.log & disown
MONITOR=DP-5 polybar --reload aux 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."


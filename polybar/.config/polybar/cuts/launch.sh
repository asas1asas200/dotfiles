#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/cuts"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Network interface config
NW=$(ip route | grep '^default' | awk '{print $5}' | head -n1)

# Launch the bar
DIS=$(xrandr --listactivemonitors | grep 'DP\|HDMI' | rev | cut -d ' ' -f1 | rev)
for mon in $DIS; do
	MONITOR="$mon" polybar -q top -c "$DIR"/config.ini &
	NW="$NW" MONITOR="$mon" polybar -q bottom -c "$DIR"/config.ini &
done

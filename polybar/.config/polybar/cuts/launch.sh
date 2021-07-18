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
#polybar -q top -c "$DIR"/config.ini &
#polybar -q bottom -c "$DIR"/config.ini &
DISPLAY2="$(xrandr -q | grep 'HDMI-*-0' | cut -d ' ' -f1)"
[[ ! -z "$DISPLAY2" ]] && MONITOR="$DISPLAY2" polybar -q top -c "$DIR"/config.ini &
[[ ! -z "$DISPLAY2" ]] && NW="$NW" MONITOR="$DISPLAY2" polybar -q bottom -c "$DIR"/config.ini &
#
#DISPLAY1="$(xrandr -q | grep 'eDP' | cut -d ' ' -f1)"
#[[ ! -z "$DISPLAY1" ]] && MONITOR="$DISPLAY1" polybar -q top -c "$DIR"/config.ini &
#[[ ! -z "$DISPLAY1" ]] && NW="$NW" MONITOR="$DISPLAY1" polybar -q bottom -c "$DIR"/config.ini &
#
#DISPLAY1="$(xrandr -q | grep 'DP' | cut -d ' ' -f1)"
#[[ ! -z "$DISPLAY1" ]] && MONITOR="$DISPLAY1" polybar -q top -c "$DIR"/config.ini &
#[[ ! -z "$DISPLAY1" ]] && NW="$NW" MONITOR="$DISPLAY1" polybar -q bottom -c "$DIR"/config.ini &
DISPLAY1="DP-0"
[[ ! -z "$DISPLAY1" ]] && MONITOR="$DISPLAY1" polybar -q top -c "$DIR"/config.ini &
[[ ! -z "$DISPLAY1" ]] && NW="$NW" MONITOR="$DISPLAY1" polybar -q bottom -c "$DIR"/config.ini &

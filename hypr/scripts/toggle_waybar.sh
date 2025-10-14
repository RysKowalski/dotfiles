#!/usr/bin/env bash
if pgrep -x waybar >/dev/null; then
 echo "Stopping Waybar..."
 pkill -x waybar
else
 echo "Starting Waybar..."
 waybar &
fi



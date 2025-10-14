#!/usr/bin/env bash

# Check if MPD is running
if ! mpc status >/dev/null 2>&1; then
  exit 0
fi

status=$(mpc status | sed -n '2p')

if echo "$status" | grep -q "\[playing\]"; then
  # Get current song title (fallback to filename if title unavailable)
  title=$(mpc current)
  echo "{\"text\": \"$title\", \"tooltip\": \"$title\"}"
else
  # If paused or stopped, display nothing
  echo ""
fi

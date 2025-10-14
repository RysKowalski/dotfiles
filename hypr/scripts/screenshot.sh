#!/usr/bin/env bash
set -euo pipefail

TMP_IMAGE="/tmp/frozen_screenshot.png"

# Get focused monitor geometry
read -r X Y WIDTH HEIGHT <<<"$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | "\(.x) \(.y) \(.width) \(.height)"')"
GEOM="${X},${Y} ${WIDTH}x${HEIGHT}"

# Capture focused monitor
grim -g "$GEOM" "$TMP_IMAGE"

# Launch overlay
swayimg -f "$TMP_IMAGE" &
OVERLAY_PID=$!

# Wait for swayimg to appear using Hyprland socket
hyprctl -j -s | jq -r --unbuffered '
  select(.["event"] == "openwindow") |
  .["window"]["class"] // ""' |
  grep -m1 swayimg >/dev/null

# Once overlay is mapped, proceed
REGION=$(slurp "$GEOM")
grim -g "$REGION" - | wl-copy

# Cleanup
kill "$OVERLAY_PID" 2>/dev/null || true
rm -f "$TMP_IMAGE"

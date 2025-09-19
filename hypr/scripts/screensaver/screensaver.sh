#!/usr/bin/env bash
set -euo pipefail

# Map monitors → "<workspace#>:<workspace_name>"
#   (pick high numbers to avoid overlap with your normal workspaces)
declare -A monitor_ws=(
  ["DP-1"]="90"
  ["DP-2"]="91"
)

# Commands to run on each monitor
declare -A monitor_cmd=(
  ["DP-1"]="bash -c 'python /home/ryskowalski/infinite_sl.py -ed4'"
  ["DP-2"]="btm"
)

# Iterate monitors
for mon in "${!monitor_ws[@]}"; do
  ws="${monitor_ws[$mon]}"
  cmd="${monitor_cmd[$mon]}"

  # Use batch commands for atomic execution
  hyprctl --batch "dispatch focusmonitor $mon; dispatch moveworkspacetomonitor $ws $mon; dispatch focusworkspaceoncurrentmonitor $ws"
  sleep 0.05
  # Spawn Alacritty fullscreen, run the command
  alacritty --class "ScreensaverTerm" --config-file ~/.config/alacritty/alacritty.toml -e bash -c "$cmd" &

  # tiny pause to let the window appear before the next iteration
  sleep 0.3
done

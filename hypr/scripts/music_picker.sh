#!/bin/bash
mapfile -t paths < <(mpc listall)
titlesRaw="$(mpc listall -f "[[%artist% - ]%title%]|[%file%]")"
mapfile -t titles < <(echo "$titlesRaw")

index="$(echo "$titlesRaw" | fuzzel --dmenu --width 200 -l 50 --index)" || exit 0

notify-send "Playing: ${titles[$index]}" && mpc insert "${paths[$index]}" && mpc next >/dev/null

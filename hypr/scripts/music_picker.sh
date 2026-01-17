# file="$(mpc listall -f "[[%artist% - ]%title%]|[%file%]" | dmenu -i -l 50)" || exit 0
file="$(mpc listall | dmenu -i -l 50)" || exit 0
notify-send "Playing $file" && mpc insert "$file" && mpc next >/dev/null

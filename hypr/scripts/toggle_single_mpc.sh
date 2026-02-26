status="$(mpc status "%single%")"

if [[ "$status" == "on" ]]; then
  mpc single off
  notify-send "single off"
fi

if [[ "$status" == "off" ]]; then
  mpc single on
  notify-send "single on"
fi

g=$(hyprpicker 2>/dev/null)

echo "$g"
wl-copy "$g"
notify-send "$g"

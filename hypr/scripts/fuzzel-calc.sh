answer="$(fuzzel -l 0 --dmenu --prompt "calc:" | kalker)"
notify-send "$answer"

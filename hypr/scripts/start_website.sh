text=$(fuzzel -l 0 --dmenu --prompt "Website: ")
if [ -n "$text" ]; then
  echo "$text"
  zen-browser "$text"
fi

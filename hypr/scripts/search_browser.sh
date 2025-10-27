text=$(fuzzel -l 0 --dmenu --prompt "Search: ")
if [ -n "$text" ]; then
  echo "$text"
  zen-browser --search "$text"
fi

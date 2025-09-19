#/bin/bash

command=$(fuzzel -l 0 --dmenu --prompt "command: ")
if [ -n "$command" ]; then
  echo "$command"
  echo "$command" >~/.config/hypr/scripts/epic_spam/command.txt
fi

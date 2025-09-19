#/bin/bash
command=$(cat ~/.config/hypr/scripts/epic_spam/command.txt)
ghostty -e "$command"

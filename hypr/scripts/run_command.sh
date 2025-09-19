#!/bin/bash
text=$(fuzzel -l 0 --dmenu --prompt "Command: ")
if [ -n "$text" ]; then
  echo "$text"
  output=$($text)

  if [ -n "$output" ]; then
    notify-send "$output"
  fi

fi

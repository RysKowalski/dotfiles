#!/bin/bash
text=$(fuzzel -l 0 --dmenu --prompt "Na Angielski ")
if [ -n "$text" ]; then
  echo "$text"
  output=$(trans -b "$text")

  if [ -n "$output" ]; then
    notify-send "$output"
  fi

fi

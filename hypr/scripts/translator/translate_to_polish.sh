#!/bin/bash
text=$(fuzzel -l 0 --dmenu --prompt "Na Polski ")
if [ -n "$text" ]; then
  echo "$text"
  output=$(trans :pl -b "$text")

  if [ -n "$output" ]; then
    notify-send "$output"
  fi

fi

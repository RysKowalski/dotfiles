#!/bin/bash

lang=$(fuzzel -l 0 --dmenu --prompt "Język: ")
text=$(fuzzel -l 0 --dmenu --prompt "Na $lang: ")
if [ -n "$text" ]; then
  echo "$text"
  output=$(trans :"$lang" -b "$text")

  if [ -n "$output" ]; then
    notify-send "$output"
  fi

fi

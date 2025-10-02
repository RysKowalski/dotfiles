#!/bin/bash

# Get current time and date in specified format
current_time=$(date "+%H:%M:%S--%D")

# Send a desktop notification with the current time and date
notify-send "Current Time and Date" "$current_time"

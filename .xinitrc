#!/bin/sh

xscreensaver -no-splash &
sleep 2
xscreensaver-command -activate

# keep X alive
exec xterm

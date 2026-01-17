#!/usr/bin/env bash
if pgrep -x showmethekey-gt >/dev/null; then
  pkill -x showmethekey-gt
else
  showmethekey-gtk -A -C &
fi

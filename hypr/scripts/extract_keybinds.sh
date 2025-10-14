#!/usr/bin/env bash
# Extracts Hyprland keybinds into a structured tab-separated format: type<TAB>modifiers<TAB>key<TAB>action<TAB>args

keybinds_file="$HOME/.config/hypr/keybinds.conf"

grep -E '^\s*bind' "$keybinds_file" | while IFS= read -r line; do
  # Remove comments
  line="${line%%#*}"
  [[ -z "$line" ]] && continue

  # Extract bind type (bind, bindm, binde, bindl, etc.)
  bind_type="$(echo "$line" | sed -E 's/^\s*(bind[^ =]*).*/\1/')"

  # Remove prefix and any spaces or '=' before the actual bindings
  stripped="$(echo "$line" | sed -E 's/^\s*bind[^ =]*\s*=\s*//')"

  # Split by commas if present, otherwise by spaces or tabs
  if [[ "$stripped" == *","* ]]; then
    IFS=',' read -r modifiers key action args <<<"$stripped"
  else
    # Split by whitespace
    read -r modifiers key action args <<<"$stripped"
  fi

  # Trim whitespace
  bind_type="$(echo "$bind_type" | xargs)"
  modifiers="$(echo "$modifiers" | xargs)"
  key="$(echo "$key" | xargs)"
  action="$(echo "$action" | xargs)"
  args="$(echo "$args" | xargs)"

  # Output tab-separated fields
  printf "%s\t%s\t%s\t%s\n" "$modifiers" "$key" "$action" "$args"
done

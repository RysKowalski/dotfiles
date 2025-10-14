#!/bin/bash

# Output workspace names as simple icons/text (not JSON)
hyprctl workspaces -j | jq -r

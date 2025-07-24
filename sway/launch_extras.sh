#!/bin/bash

launch_single_instance() {
  local program="$1"
  local command="$2"
  if ! pgrep -x "$program" >/dev/null; then
    $command &
  fi
}

# Launch waybar
launch_single_instance "waybar" "waybar"

# Launch nm-applet
launch_single_instance "nm-applet" "nm-applet --indicator"

# Launch mako
launch_single_instance "mako" "mako"

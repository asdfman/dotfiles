#!/bin/bash
options="Logout\nShutdown\nReboot"
choice=$(echo -e "$options" | wofi --dmenu --prompt "Power Menu" --width 300 --height 150 --location top_right)

close_brave() {
  pkill -u "$USER" brave
  sleep 1
}

case "$choice" in
Logout)
  close_brave
  swaymsg exit
  ;;
Shutdown)
  close_brave
  systemctl poweroff
  ;;
Reboot)
  close_brave
  systemctl reboot
  ;;
esac

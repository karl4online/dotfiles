#!/bin/bash
systemctl --user restart --now hyprpaper.service
notify-send "Restarted Hyprpaper"

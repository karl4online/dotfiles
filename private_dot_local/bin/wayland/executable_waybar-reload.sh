#!/bin/bash
systemctl --user restart --now waybar.service
notify-send "Restarted Waybar"

#!/bin/bash

# Check if hyprctl command is available
if ! command -v hyprctl &>/dev/null; then
    notify-send "Error" "Hyprland is not installed or not in the system path."
    exit 1
fi

LAPTOP_MONITOR=$(hyprctl monitors all | awk '{print $0}' | grep "disabled: true")

if [[ -z "$LAPTOP_MONITOR" ]]; then
    hyprctl keyword monitor eDP-1,disabled
    notify-send "Hyprland" "Shutting down laptop monitor."
else
    hyprctl keyword monitor eDP-1,1920x1080@60.05100,1920x0,1
    notify-send "Hyprland" "Starting laptop monitor."
fi

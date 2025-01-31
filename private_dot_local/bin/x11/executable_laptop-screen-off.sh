#!/bin/bash

# Get the name of your laptop display (e.g., eDP-1)
laptop_display=$(xrandr --query | grep ' connected' | grep 'eDP-1' | cut -d' ' -f1)

# Turn off the laptop display
xrandr --output $laptop_display --off

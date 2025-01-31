#!/bin/bash

# Check if an external monitor is connected
if xrandr | grep -q " connected" ; then # Turn on the laptop screen
  xrandr --output eDP-1 --auto
fi

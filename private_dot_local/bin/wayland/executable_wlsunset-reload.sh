#!/bin/bash
killall -9 wlsunset
sleep 1
wlsunset -l 59.3 -L 18.0 -T 6500 -t 4700 &
notify-send "Restarted Wlsunset"

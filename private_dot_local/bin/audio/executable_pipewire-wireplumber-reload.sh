#!/bin/bash

killall -9 pipewire pipewire-pulse wireplumber

sleep 1

systemctl --user restart pipewire.service &
systemctl --user restart pipewire-pulse.service &
systemctl --user restart wireplumber.service &

notify-send "Restarted Pipewire"

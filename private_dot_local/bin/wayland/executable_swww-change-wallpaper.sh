#!/bin/bash
swww img "$(find ~/Pictures/wallpapers/ -type f | shuf -n 1)" --transition-duration 1 --transition-fps 100 --transition-type any 


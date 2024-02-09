#!/bin/bash

# rotation of DVI-I-2-2
pos=$(xrandr --query | grep 'DVI-I-2-2' | awk '{print $4}')

# Rotate current screen 90 degrees and change resolution and position
if [ "$pos" = "left" ]; then
    bash ~/.scripts/screen_normal.sh
else
    bash ~/.scripts/screen_left.sh
fi
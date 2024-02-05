#!/bin/bash

# rotation of DVI-I-2-2
pos=$(xrandr --query | grep 'DVI-I-2-2' | awk '{print $4}')

# Rotate current screen 90 degrees and change resolution and position
if [ "$pos" = "left" ]; then
    xrandr --output DVI-I-2-2 --rotate normal --mode 2560x1440 --rate 120.00 --left-of DVI-I-1-1 --output DVI-I-1-1 --mode 2560x1440 --rate 120.00 --primary --output eDP-1 --mode 1920x1080 --rate 60.16 --below DVI-I-1-1
else
    xrandr --output DVI-I-2-2 --rotate left --mode 2560x1440 --rate 120.00 --left-of DVI-I-1-1 --pos 0x0 --output DVI-I-1-1 --mode 2560x1440 --rate 120.00 --pos 1440x160 --primary --output eDP-1 --mode 1920x1080 --rate 60.16 --below DVI-I-1-1
fi
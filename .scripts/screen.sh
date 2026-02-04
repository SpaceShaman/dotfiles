#!/bin/bash

SCREEN_PRIMARY="DVI-I-2-2"
SCREEN_PRIMARY_MODE="2560x1440"
SCREEN_PRIMARY_RATE="120.00"
SCREEN_LEFT="DVI-I-1-1"
SCREEN_LEFT_MODE="2560x1440"
SCREEN_LEFT_RATE="120.00"
SCREEN_BOTTOM="eDP-1"
SCREEN_BOTTOM_MODE="1920x1080"
SCREEN_BOTTOM_RATE="60.16"

if [ $# -eq 0 ]; then
    echo -e "\033[1;31mUse: screen -n or --normal to set the screen to normal mode.\033[0m"
    echo -e "\033[1;31mUse: screen -r or --rotate to set left screen to rotate mode.\033[0m"
    echo -e "\033[1;31mUse: screen -d or --duplicate to set all screens to duplicate mode.\033[0m"
    echo -e "\033[1;31mUse: screen -a or --auto to toggle screen auto off.\033[0m"

elif [ $1 = "-n" ] || [ $1 = "--normal" ]; then
    xrandr \
        --output $SCREEN_PRIMARY --mode $SCREEN_PRIMARY_MODE --rate $SCREEN_PRIMARY_RATE --primary \
        --output $SCREEN_LEFT --rotate normal --mode $SCREEN_LEFT_MODE --rate $SCREEN_LEFT_RATE --left-of $SCREEN_PRIMARY \
        --output $SCREEN_BOTTOM --mode $SCREEN_BOTTOM_MODE --rate $SCREEN_BOTTOM_RATE --below $SCREEN_PRIMARY

elif [ $1 = "-r" ] || [ $1 = "--rotate" ]; then
    xrandr \
        --output $SCREEN_PRIMARY --rotate normal --mode $SCREEN_PRIMARY_MODE --rate $SCREEN_PRIMARY_RATE --primary --pos 1440x160 \
        --output $SCREEN_LEFT --rotate left --mode $SCREEN_LEFT_MODE --rate $SCREEN_LEFT_RATE --left-of $SCREEN_PRIMARY --pos 0x0 \
        --output $SCREEN_BOTTOM --mode $SCREEN_BOTTOM_MODE --rate $SCREEN_BOTTOM_RATE --below $SCREEN_PRIMARY

elif [ $1 = "-d" ] || [ $1 = "--duplicate" ]; then
    xrandr --listmonitors | sed -n '1!p' | sed -e 's/\s[0-9].*\s\([a-zA-Z0-9\-]*\)$/\1/g' | xargs -n 1 -- bash -xc 'xrandr --output $0 --mode '$SCREEN_BOTTOM_MODE' --pos 0x0 --rotate normal'

elif [ $1 = "-a" ] || [ $1 = "--auto" ]; then
    if [ "$(xset q | grep '  DPMS is Enabled')" ]; then
        xset -dpms
        xset s off
        echo "Screen auto off disabled"
    else
        xset +dpms
        xset s on
        xset s 300
        echo "Screen auto off enabled"
    fi
fi


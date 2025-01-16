#!/bin/bash

if [ "$1" = "--full" ]; then
    scrot '/home/ton618/Obrazy/screen-%Y-%m-%d-%H_%M.png' -e 'xclip -selection clipboard -t image/png -i $f'
    exit 0
else
    scrot -s '/home/ton618/Obrazy/screen-%Y-%m-%d-%H_%M.png' -e 'xclip -selection clipboard -t image/png -i $f'
fi

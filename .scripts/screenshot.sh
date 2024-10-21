#!/bin/bash

# scrot -s '/home/ton618/Obrazy/screen-%Y-%m-%d-%H_%M.jpg'
scrot -s '/home/ton618/Obrazy/screen-%Y-%m-%d-%H_%M.png' -e 'xclip -selection clipboard -t image/png -i $f'
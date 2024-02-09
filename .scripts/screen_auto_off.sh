#!/bin/bash

# Toggle screen auto off for 5 minutes
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
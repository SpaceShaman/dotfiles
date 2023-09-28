#!/bin/bash
# Script to display a message about a break to use in pomodoro timer
sleep 0.1
text="PORA NA DŁUGĄ PRZERWĘ!"
row=$(( $(tput lines) / 2 - 1))
col=$(( ($(tput cols) - ${#text}) / 2))
tput clear
tput cup $row $col

echo -e "\033[1;32m$text\033[0m"

sleep 5
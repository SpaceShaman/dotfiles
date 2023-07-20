#!/bin/bash

if [ $# -ne 1 ]; then
    echo -e "\033[1;31mUse: wifi <wifi name> to connect to a wifi network.\033[0m"
    echo -e "\033[1;31mUse: wifi -l or --list to list available wifi networks.\033[0m"
    echo -e "\033[1;31mUse: wifi -d or --disconnect to disconnect from wifi.\033[0m"
    exit 1
fi

if [ $1 = "-l" ] || [ $1 = "--list" ]; then
    nmcli dev wifi list
    exit 1
fi

if [ $1 = "-d" ] || [ $1 = "--disconnect" ]; then
    nmcli dev disconnect wlo1
    echo -e "\033[1;32mDisconnected from wifi.\033[0m"
    exit 1
fi

while true; do
    if nmcli c show --active | grep -q "$1"; then
        echo -e "\033[1;32mConnected to $1\033[0m"
        break
    fi

    nmcli dev wifi connect $1

    sleep 1
done
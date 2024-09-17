#!/bin/bash

# get the last directory name from the path of actual, if is "app" then get the parent directory
# if is not "holidays", "warehouse" or "ql_connect" then exit
app_name=$(basename $(pwd))
if [ "$app_name" = "app" ]; then
    app_name=$(basename $(dirname $(pwd)))
fi
if [ "$app_name" != "holidays" ] && [ "$app_name" != "warehouse" ] && [ "$app_name" != "connect" ] && [ "$app_name" != "analytics" ]; then
    echo -e "\033[1;31mYou are not in holidays, warehouse or ql_connect directory.\033[0m"
    exit 1
fi

if [ "$app_name" = "connect" ]; then
    ssh krzysztofs@146.59.126.189 "cd core/connect && git pull && cd .. && docker-compose down connect && docker-compose build connect && docker-compose up -d connect"
else
    ssh krzysztofs@146.59.126.189 "cd $app_name && git pull && docker-compose down && docker-compose build && docker-compose up -d"
fi
echo -e "\033[1;32mUpdate to the new version done.\033[0m"
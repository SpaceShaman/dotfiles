#!/bin/bash

# get the last directory name from the path of actual, if is "app" then get the parent directory
# if is not "holidays", "warehouse" or "ql_connect" then exit
app_name=$(basename $(pwd))
if [ "$app_name" = "app" ]; then
    app_name=$(basename $(dirname $(pwd)))
fi
if [ "$app_name" != "holidays" ] && [ "$app_name" != "warehouse" ] && [ "$app_name" != "connect" ] && [ "$app_name" != "analytics" ] && [ "$app_name" != "frontend" ]; then
    echo -e "\033[1;31mYou are not in the correct directory to update the app.\033[0m"
    exit 1
fi

if [ "$app_name" = "connect" ] || [ "$app_name" = "frontend" ]; then
    ssh krzysztofs@146.59.126.189 "cd core/$app_name && git pull && cd .. && docker-compose down $app_name && docker-compose build $app_name && docker-compose up -d $app_name"
else
    ssh krzysztofs@146.59.126.189 "cd $app_name && git pull && docker-compose down && docker-compose build && docker-compose up -d"
fi
docker system prune -f
echo -e "\033[1;32mUpdate to the new version done.\033[0m"
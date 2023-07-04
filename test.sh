#!/bin/bash

# Check that exactly one argument is given
if [ $# -ne 1 ]; then
    echo "Use: $0 <major|minor|patch> to increase the version number."
    exit 1
fi

# Detect previous version
last_version=$(git tag | sort -V | tail -n 1)

# Increase the major version
if [ "$1" = "major" ]; then
    # delete v in front of major number if exists
    if [[ "${last_version:0:1}" == "v" ]]; then
        last_version=$(echo $last_version | cut -dv -f2)
        new_version="v$((last_version+1)).0.0"
    else 
        new_version="$((last_version+1)).0.0"
    fi
#!/bin/bash

# Check that exactly one argument is given
if [ $# -ne 1 ]; then
    echo "Use: $0 <major|minor|patch> to increase the version number."
    exit 1
fi

# Detect previous version
last_version=$(git tag | sort -V | tail -n 1)
echo "Last version: $last_version"
major=$(echo $last_version | cut -d. -f1)
minor=$(echo $last_version | cut -d. -f2)
patch=$(echo $last_version | cut -d. -f3)

# Increase the major version
if [ "$1" = "major" ]; then
    # delete v in front of major number if exists
    if [[ "${major:0:1}" == "v" ]]; then
        major=$(echo $major | cut -dv -f2)
        new_version="v$((major+1)).0.0"
    else 
        new_version="$((major+1)).0.0"
    fi
# Increment the minor version
elif [ "$1" = "minor" ]; then
    new_version="$major.$((minor+1)).0"
# Increment the patch version
elif [ "$1" = "patch" ]; then
    new_version="$major.$minor.$((patch+1))"
else
    echo "Unknown argument: $1"
    echo "Use: $0 <major|minor|patch> to increase the version number."
    exit 1
fi

# Do the rest of the commands
git flow release start $new_version
git flow release finish $new_version
git push --all
git push --tags

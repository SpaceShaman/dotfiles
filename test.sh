#!/bin/bash

# Check that exactly one argument is given
if [ $# -ne 1 ]; then
    echo "Use: $0 <major|minor|patch> to increase the version number."
    exit 1
fi

# Detect previous version
last_version=$(git tag | sort -V | tail -n 1)

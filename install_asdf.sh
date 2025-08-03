#!/bin/bash

# Download the latest ASDF release
LATEST_URL=$(curl -s https://api.github.com/repos/asdf-vm/asdf/releases/latest \
  | jq -r '.assets[] | select(.name | test("asdf.*\\.tar\\.gz$")).browser_download_url')
curl -L -o asdf.tar.gz $LATEST_URL

# Delete the old release
rm -rf /home/ton618/.local/bin/asdf

# Create the directory if it doesn't exist
mkdir -p /home/ton618/.local/bin

# Extract the new release
tar -xzf asdf.tar.gz -C /home/ton618/.local/bin

# Delete the tar.gz file
rm asdf.tar.gz


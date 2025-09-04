#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
RESET='\033[0m'

ARCH=$(uname -m)
[[ "$ARCH" == "x86_64" ]] && ARCH=amd64
[[ "$ARCH" == "aarch64" ]] && ARCH=arm64

LATEST_URL=$(curl -s https://api.github.com/repos/asdf-vm/asdf/releases/latest \
  | jq -r --arg arch "$ARCH" '.assets[] | select(.name | test("asdf.*linux-" + $arch + ".*\\.tar\\.gz$")).browser_download_url' \
  | head -n 1)

curl -L -o asdf.tar.gz $LATEST_URL

rm -rf /home/ton618/.local/bin/asdf

mkdir -p /home/ton618/.local/bin

tar -xzf asdf.tar.gz -C /home/ton618/.local/bin

rm asdf.tar.gz

echo -e "${BOLD}${GREEN}asdf is installed.${RESET}"

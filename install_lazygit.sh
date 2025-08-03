#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
RESET='\033[0m'

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')

curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"

tar xf lazygit.tar.gz lazygit

sudo install lazygit -D -t /usr/local/bin/

rm lazygit.tar.gz lazygit

echo -e "${BOLD}${GREEN}lazygit is installed.${RESET}"

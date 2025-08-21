#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

echo -e "${BOLD}${YELLOW}Syncing dotfiles with system via stow...${RESET}"
stow -t ~ -d ~/dotfiles
echo -e "${BOLD}${GREEN}Dotfiles synced.${RESET}"

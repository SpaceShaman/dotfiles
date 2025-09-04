#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

echo -e "${BOLD}${YELLOW}Installing fisher plugins...${RESET}"

chown -R $USER ~/.config/fish
fish -c "fisher update"

echo -e "${BOLD}${GREEN}Fisher plugins installed.${RESET}"

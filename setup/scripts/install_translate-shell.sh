#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

echo -e "${BOLD}${YELLOW}Installing translate-shell...${RESET}"
wget git.io/trans
chmod +x trans
mv trans /usr/local/bin/trans
echo -e "${BOLD}${GREEN}Translate-shell installed.${RESET}"

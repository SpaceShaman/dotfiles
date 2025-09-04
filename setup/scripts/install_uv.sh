#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

echo -e "${BOLD}${YELLOW}Installing UV...${RESET}"

curl -LsSf https://astral.sh/uv/install.sh | sh

echo -e "${BOLD}${GREEN}UV installed.${RESET}"

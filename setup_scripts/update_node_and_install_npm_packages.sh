#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

echo -e "${BOLD}${YELLOW}Updating Node and installing npm packages...${RESET}"

npm install -g n
n lts
n prune
npm install -g npm@latest

npm install -g opencommit markdownlint-cli2

echo -e "${BOLD}${GREEN}Node and npm packages updated.${RESET}"

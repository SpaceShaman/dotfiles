#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

if ! command -v asdf &> /dev/null; then
  echo -e "${BOLD}${YELLOW}asdf is not installed. Installing...${RESET}"
  bash install_asdf.sh
fi

echo -e "${BOLD}${YELLOW}Updating Elixir and Erlang...${RESET}"
asdf plugin add erlang
asdf plugin add elixir
asdf update
asdf plugin-update
asdf install erlang latest
asdf install elixir latest

echo -e "${BOLD}${GREEN}Elixir and Erlang are installed and updated.${RESET}"

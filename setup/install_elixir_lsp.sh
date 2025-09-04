#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
RESET='\033[0m'

LATEST_URL=$(curl -s https://api.github.com/repos/elixir-lsp/elixir-ls/releases/latest \
  | jq -r '.assets[] | select(.name | test("elixir-ls.*\\.zip$")).browser_download_url')
curl -L -o elixir-ls.zip $LATEST_URL

rm -rf /home/ton618/.local/share/elixir-lsp/elixir-ls

mkdir -p /home/ton618/.local/share/elixir-lsp

unzip elixir-ls.zip -d /home/ton618/.local/share/elixir-lsp/elixir-ls

rm elixir-ls.zip

echo -e "${BOLD}${GREEN}Elixir LSP is updated.${RESET}"

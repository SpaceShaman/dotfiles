#!/bin/bash

# Download the latest release of the elixir-lsp
LATEST_URL=$(curl -s https://api.github.com/repos/elixir-lsp/elixir-ls/releases/latest \
  | jq -r '.assets[] | select(.name | test("elixir-ls.*\\.zip$")).browser_download_url')
curl -L -o elixir-ls.zip $LATEST_URL

# Delete the old release
rm -rf /home/ton618/.local/share/elixir-lsp/elixir-ls

# Create the directory if it doesn't exist
mkdir -p /home/ton618/.local/share/elixir-lsp

# Extract the new release
unzip elixir-ls.zip -d /home/ton618/.local/share/elixir-lsp/elixir-ls

# Delete the zip file
rm elixir-ls.zip

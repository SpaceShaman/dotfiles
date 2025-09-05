if ask "Do you want to install Elixir LSP?"; then
  LATEST_URL=$(curl -s https://api.github.com/repos/elixir-lsp/elixir-ls/releases/latest \
    | jq -r '.assets[] | select(.name | test("elixir-ls.*\\.zip$")).browser_download_url')
  curl -L -o elixir-ls.zip $LATEST_URL

  sudo rm -rf /home/ton618/.local/share/elixir-lsp/elixir-ls
  sudo mkdir -p /home/ton618/.local/share/elixir-lsp
  sudo unzip elixir-ls.zip -d /home/ton618/.local/share/elixir-lsp/elixir-ls
  rm elixir-ls.zip
  success "Elixir LSP installed!"
fi

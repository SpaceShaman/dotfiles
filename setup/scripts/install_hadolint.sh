if ask "Do you want to install Hadolint?"; then
  info "Installing Hadolint..."
  LATEST_URL=$(curl -s https://api.github.com/repos/hadolint/hadolint/releases/latest \
    | jq -r '.assets[] | select(.name | test("hadolint-linux-x86_64$")).browser_download_url')
  curl -L -o hadolint $LATEST_URL
  chmod +x hadolint
  sudo mv hadolint ~/.local/bin
  success "Hadolint installed!"
fi

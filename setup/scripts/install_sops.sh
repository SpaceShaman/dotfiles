if ask "Do you want to install SOPS?"; then
  info "Installing sops..."
  curl -LO https://github.com/getsops/sops/releases/download/v3.13.1/sops-v3.13.1.linux.amd64
  mv sops-v3.13.1.linux.amd64 ~/.local/bin/sops
  chmod +x ~/.local/bin/sops
  success "sops installed!"
fi

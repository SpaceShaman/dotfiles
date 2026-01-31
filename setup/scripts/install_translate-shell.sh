if ask "Do you want to install translate-shell?"; then
  info "Installing translate-shell..."
  wget git.io/trans
  chmod +x trans
  sudo mv trans /usr/local/bin/trans
  sudo apt install -y gawk
  success "translate-shell installed!"
fi

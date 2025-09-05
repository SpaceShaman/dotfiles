if ask "Do you want to install translate-shell?"; then
  info "Installing translate-shell..."
  wget git.io/trans
  chmod +x trans
  sudo mv trans /usr/local/bin/trans
  success "translate-shell installed!"
fi

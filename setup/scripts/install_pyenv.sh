if ask "Do you want to install Pyenv?"; then
  info "Installing Pyenv..."
  sudo rm -rf $HOME/.pyenv
  curl -fsSL https://pyenv.run | bash
  success "Pyenv installed!"
fi

if ask "Do you want to install Pyenv?"; then
  sudo rm -rf $HOME/.pyenv
  curl -fsSL https://pyenv.run | bash
  success "Pyenv installed!"
fi

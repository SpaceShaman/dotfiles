if ask "Do you want to sync dotfiles with system via stow?"; then
  info "Syncing dotfiles with system via stow..."
  cd ..
  stow --adopt .
  cd -
  success "Dotfiles synced with system!"

  info "Adding symlink to icons..."
  sudo ln -sf $HOME/.icons/Arc /usr/share/icons/Arc
  success "Symlink to icons added!"

  info "Adding alternatives for python..."
  sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1
  success "Alternatives for python added!"
fi

if ask "Do you want to sync dotfiles with system via stow?"; then
  cd ..
  stow --adopt .
  cd -
  success "Dotfiles synced with system!"
fi

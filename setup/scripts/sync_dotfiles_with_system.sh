if ask "Do you want to sync dotfiles with system via stow?"; then
  info "Syncing dotfiles with system via stow..."
  cd ..
  stow --adopt .
  cd -
  success "Dotfiles synced with system!"
fi

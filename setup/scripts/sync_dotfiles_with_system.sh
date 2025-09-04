info "Syncing dotfiles with system via stow..."

cd ..
stow --adopt .
cd -

success "Dotfiles synced with system!"

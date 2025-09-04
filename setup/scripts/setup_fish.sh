if ask "Do you want to setup Fish?"; then
  chown -R $USER ~/.config/fish
  fish -c "fisher update"
  success "Fish setup complete!"
fi

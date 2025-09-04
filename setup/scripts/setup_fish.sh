if ask "Do you want to setup Fish?"; then
  chown -R $USER ~/.config/fish
  fish -c "fisher update"
  chsh -s $(which fish)
  success "Fish setup complete!"
fi

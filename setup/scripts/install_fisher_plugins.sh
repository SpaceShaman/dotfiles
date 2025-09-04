if ask "Do you want to install Fisher plugins?"; then
  chown -R $USER ~/.config/fish
  fish -c "fisher update"
  success "Fisher plugins installed!"
fi

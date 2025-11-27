if ask "Do you want to install python tools?"; then
  info "Installing python tools..."
  uv tool install shell_gpt
  success "Python tools installed!"
fi

if ask "Do you want to install python packages?"; then
  info "Installing python packages..."
  pip install uv shell_gpt ptpython
  success "Python packages installed!"
fi

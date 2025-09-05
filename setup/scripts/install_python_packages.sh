if ask "Do you want to install python packages?"; then
  info "Installing python packages..."
  python3 -m pip config set global.break-system-packages true
  pip install uv shell_gpt ptpython
  success "Python packages installed!"
fi

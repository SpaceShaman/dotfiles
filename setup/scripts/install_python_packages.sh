if ask "Do you want to install python packages?"; then
  pip install uv shell_gpt ptpython
  success "Python packages installed!"
fi

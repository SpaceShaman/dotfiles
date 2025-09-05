if ask "Do you want to install UV?"; then
  curl -LsSf https://astral.sh/uv/install.sh | sh
  success "UV installed!"
fi

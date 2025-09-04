if ask "Do you want to install Poetry?"; then
  curl -sSL https://install.python-poetry.org | sudo python3 -
  success "Poetry installed!"
fi

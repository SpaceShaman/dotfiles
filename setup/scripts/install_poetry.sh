if ask "Do you want to install Poetry?"; then
  pyenv install 3.12
  curl -sSL https://install.python-poetry.org | python3.12 -
  success "Poetry installed!"
fi

if ask "Do you want to install Poetry?"; then
  curl -sSL https://install.python-poetry.org | POETRY_HOME=$HOME/.local/share/pypoetry sudo python3 -
  success "Poetry installed!"
fi

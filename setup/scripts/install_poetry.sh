if ask "Do you want to install Poetry?"; then
  info "Installing Poetry..."
  curl -sSL https://install.python-poetry.org | sudo POETRY_HOME=$HOME/.local/share/pypoetry python3 -
  success "Poetry installed!"
fi

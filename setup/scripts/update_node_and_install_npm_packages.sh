if ask "Do you want to update Node and install npm packages?"; then
  sudo npm install -g n
  n lts
  n prune
  sudo npm install -g npm@latest

  sudo npm install -g opencommit markdownlint-cli2
  success "Node and npm packages updated!"
fi

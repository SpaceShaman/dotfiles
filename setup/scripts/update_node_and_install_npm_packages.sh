if ask "Do you want to update Node and install npm packages?"; then
  npm install -g n
  n lts
  n prune
  npm install -g npm@latest

  npm install -g opencommit markdownlint-cli2
  success "Node and npm packages updated!"
fi

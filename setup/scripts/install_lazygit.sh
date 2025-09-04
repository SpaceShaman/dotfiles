if ask "Do you want to install lazygit?"; then
  curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
  tar xf lazygit.tar.gz lazygit
  install lazygit -D -t /usr/local/bin/
  rm lazygit.tar.gz lazygit
  success "Lazygit installed!"
fi

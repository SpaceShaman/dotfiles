if ask "Do you want to install zk?"; then
  info "Installing zk..."
  ZK_VERSION=$(curl -s "https://api.github.com/repos/zk-org/zk/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
  curl -Lo zk.tar.gz "https://github.com/zk-org/zk/releases/download/v${ZK_VERSION}/zk-v${ZK_VERSION}-linux-amd64.tar.gz"
  sudo rm -rf $HOME/.local/bin/zk
  sudo mkdir -p $HOME/.local/bin
  sudo tar -xzf zk.tar.gz -C $HOME/.local/bin
  sudo chmod +x $HOME/.local/bin/zk
  rm zk.tar.gz
  success "zk installed!"
fi

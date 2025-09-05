if ask "Do you want to install asdf?"; then
  info "Installing asdf..."
  sudo apt -y install build-essential autoconf m4 libncurses-dev libwxgtk3.2-dev libwxgtk-webview3.2-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils openjdk-17-jdk

  ARCH=$(uname -m)
  [[ "$ARCH" == "x86_64" ]] && ARCH=amd64
  [[ "$ARCH" == "aarch64" ]] && ARCH=arm64

  LATEST_URL=$(curl -s https://api.github.com/repos/asdf-vm/asdf/releases/latest \
    | jq -r --arg arch "$ARCH" '.assets[] | select(.name | test("asdf.*linux-" + $arch + ".*\\.tar\\.gz$")).browser_download_url' \
    | head -n 1)

  curl -L -o asdf.tar.gz $LATEST_URL
  sudo rm -rf $HOME/.local/bin/asdf
  sudo mkdir -p $HOME/.local/bin
  sudo tar -xzf asdf.tar.gz -C $HOME/.local/bin
  sudo chmod +x $HOME/.local/bin/asdf
  rm asdf.tar.gz

  success "asdf installed!"
fi

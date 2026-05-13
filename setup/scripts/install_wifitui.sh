if ask "Do you want to install wifitui?"; then
  info "Installing wifitui..."

  # Fetch the latest release version
  TAG=$(curl -s https://api.github.com/repos/shazow/wifitui/releases/latest | grep "tag_name" | cut -d '"' -f4)
  OS="linux-$(uname -m)" # x86_64 or arm64
  LATEST_RELEASE="https://github.com/shazow/wifitui/releases/download/${TAG}/wifitui-${TAG:1}-${OS}"

  # Just the binary (any distro)
  wget -q -O- "${LATEST_RELEASE}.tar.gz" | tar xzv

  # Debian
  curl -Lfs "${LATEST_RELEASE}.deb" -o /tmp/wifitui.deb
  sudo apt install /tmp/wifitui.deb
  rm -f /tmp/wifitui.deb

  success "wifitui installed!"
fi

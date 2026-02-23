if ask "Do you want to install DisplayLink drivers?"; then
  info "Installing DisplayLink USB HDMI drivers..."
  if [ ! -d "displaylink-debian" ]; then
    git clone https://github.com/AdnanHodzic/displaylink-debian.git
  fi
  cd displaylink-debian
  sudo ./displaylink-debian.sh
  cd ..
  rm -rf displaylink-debian

  dl_conf="/etc/X11/xorg.conf.d/20-displaylink.conf"
  [ -f "$dl_conf" ] && sudo mv "$dl_conf" "${dl_conf}.bak"

  success "DisplayLink USB HDMI drivers installed!"
fi

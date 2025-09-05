if ask "Do you want to install DisplayLink drivers?"; then
  info "Installing DisplayLink USB HDMI drivers..."
  git clone https://github.com/AdnanHodzic/displaylink-debian.git
  cd displaylink-debian
  sudo ./displaylink-debian.sh
  cd ..
  rm -rf displaylink-debian
  success "DisplayLink USB HDMI drivers installed!"
fi

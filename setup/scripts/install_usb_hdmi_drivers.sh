if ask "Do you want to install DisplayLink USB HDMI drivers?"; then
  git clone https://github.com/AdnanHodzic/displaylink-debian.git
  cd displaylink-debian
  sudo ./displaylink-debian.sh
  rm -rf displaylink-debian
  success "DisplayLink USB HDMI drivers installed!"
fi

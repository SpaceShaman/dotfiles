if ask "Do you want to install apt packages?"; then
  info "Installing apt packages..."
  sudo apt update && sudo apt upgrade -y
  sudo apt install -y curl fish git wget htop moc alacritty mc nodejs npm awesome compton rofi light pavucontrol playerctl scrot xclip ripgrep fd-find bat stow rsync
  success "Apt packages installed!"

  info "Setting up bat..."
  mkdir -p ~/.local/bin
  if [ ! -e ~/.local/bin/bat ]; then
    sudo ln -s /usr/bin/batcat ~/.local/bin/bat
  fi
  success "Bat installed!"
  
  info "Select alacritty as default terminal emulator..."
  sudo update-alternatives --config x-terminal-emulator
  success "Alacritty set as default terminal emulator!"
fi

if ask "Do you want to install BespokeSynth?"; then
  info "Installing BespokeSynth..."
  echo 'deb http://download.opensuse.org/repositories/home:/bespokesynth/Debian_13/ /' | sudo tee /etc/apt/sources.list.d/home:bespokesynth.list
  curl -fsSL https://download.opensuse.org/repositories/home:bespokesynth/Debian_13/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_bespokesynth.gpg > /dev/null
  sudo apt update
  sudo apt install bespokesynth
  success "BespokeSynth installed!"
fi

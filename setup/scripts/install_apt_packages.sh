info "Installing apt packages..."

sudo apt update && sudo apt upgrade -y
sudo apt install -y curl fish git wget htop moc alacritty mc nodejs npm awesome compton rofi light pavucontrol playerctl scrot xclip ripgrep fd-find bat stow rsync

success "Apt packages installed!"

info "Setting up bat..."

mkdir -p ~/.local/bin
sudo ln -s /usr/bin/batcat ~/.local/bin/bat

success "Bat installed!"

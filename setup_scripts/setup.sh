#!/bin/bash

bash copy.sh

apt update && apt upgrade -y
apt install -y software-properties-common
apt-add-repository -y ppa:fish-shell/release-3 
apt-add-repository -y ppa:neovim-ppa/stable
apt-add-repository -y ppa:aslatter/ppa
apt install -y fish curl neovim git wget htop moc alacritty mc nodejs npm awesome compton rofi light pavucontrol playerctl scrot xclip translate-shell ripgrep fd-find bat stow

# setup bat
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

# Set neovim as default editor
update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

# Update nodejs and npm
npm install -g n
n lts
n prune
npm install -g npm@latest

# Install npm packages
npm install -g opencommit markdownlint-cli2

# Install fisher plugins
chown -R $USER ~/.config/fish
fish -c "fisher update"

# Set hotkey for emoji panel to prevent conflict with vscode hotkeys
gsettings set org.freedesktop.ibus.panel.emoji hotkey "['<Control>semicolon']" 

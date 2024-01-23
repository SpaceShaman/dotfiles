#!/bin/bash

bash copy.sh

apt update && apt upgrade -y
apt install -y software-properties-common
apt-add-repository -y ppa:fish-shell/release-3 
apt-add-repository -y ppa:neovim-ppa/stable
apt-add-repository -y ppa:aslatter/ppa
apt install -y fish curl neovim git wget htop moc alacritty mc nodejs npm awesome compton rofi light pavucontrol playerctl scrot

bash python.sh 3.12

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
npm install -g opencommit

# Install fisher plugins
fish -c "fisher update"
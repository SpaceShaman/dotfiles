#!/bin/bash

bash copy.sh

apt-add-repository -y ppa:fish-shell/release-3
add-apt-repository -y ppa:neovim-ppa/stable
apt update && apt upgrade -y
apt install -y fish curl neovim git wget htop moc alacritty mc nodejs npm

bash python.sh 3.12

# Set neovim as default editor
update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

# Install fisher and plugins
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update

# Update nodejs and npm
npm install -g n
n lts
n prune
npm install -g npm@latest

# Install npm packages
npm install -g opencommit

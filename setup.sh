#!/bin/bash

apt-add-repository ppa:fish-shell/release-3
apt-add-repository ppa:deadsnakes/ppa
add-apt-repository ppa:neovim-ppa/stable
apt update
apt install -y fish curl neovim git wget htop moc alacritty mc nodejs npm python3.11 python3.11-dev python3.11-venv python3-pip python3.11-distutils python3.11-lib2to3 python3.11-gdbm python3.11-tk gnome-shell-pomodoro 

# Set python3.11 as default python version and pip
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.11 1
update-alternatives --install /usr/bin/python python /usr/bin/python3.11 1
update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
# Set neovim as default editor
update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

# Install pip packages
pip install shell-gpt ptpython gnome-extensions-cli

# Install gnome extensions
gext install 19 3357 # User themes and Material Shell
gext enable 19 3357

# Install fisher and plugins
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update

# Install snap packages
snap install --classic code

# Update nodejs and npm
npm install -g n
n lts
n prune
npm install -g npm@latest

# Install npm packages
npm install -g opencommit

# Load gnome settings
dconf load / < dconf.ini

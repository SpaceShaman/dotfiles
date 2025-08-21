#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

echo -e "${BOLD}${YELLOW}Installing apt packages...${RESET}"

apt update && apt upgrade -y
apt install -y software-properties-common
apt-add-repository -y ppa:fish-shell/release-3 
apt-add-repository -y ppa:aslatter/ppa
apt install -y fish curl neovim git wget htop moc alacritty mc nodejs npm awesome compton rofi light pavucontrol playerctl scrot xclip translate-shell ripgrep fd-find bat stow rsync

echo -e "${BOLD}${GREEN}APT packages installed.${RESET}"

echo -e "${BOLD}${YELLOW}Setting up bat...${RESET}"
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
echo -e "${BOLD}${GREEN}Bat is set up.${RESET}"

#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RESET='\033[0m'

echo -e "${BOLD}${YELLOW}Installing apt packages...${RESET}"

apt update && apt upgrade -y
apt install -y curl

# Add fish repo
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/4/Debian_13/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:4.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:4/Debian_13/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_4.gpg > /dev/null

apt install -y fish git wget htop moc alacritty mc nodejs npm awesome compton rofi light pavucontrol playerctl scrot xclip translate-shell ripgrep fd-find bat stow rsync

echo -e "${BOLD}${GREEN}APT packages installed.${RESET}"

echo -e "${BOLD}${YELLOW}Setting up bat...${RESET}"
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
echo -e "${BOLD}${GREEN}Bat is set up.${RESET}"

#!/bin/bash

set -e
trap 'echo -e "${BOLD}${RED}Wystąpił błąd. Przerywam instalację.${RESET}"' ERR

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RED='\033[31m'
RESET='\033[0m'

echo -e "${BOLD}${GREEN}Starting setup...${RESET}"


bash ./install_apt_packages.sh
bash ./sync_dotfiles_with_system.sh
bash ./install_translate-shell.sh
bash ./install_usb_hdmi_drivers.sh
bash ./install_nvim.sh
bash ./install_docker.sh
bash ./install_lazygit.sh
bash ./install_poetry_and_pyenv.sh
bash ./install_uv.sh
bash ./install_asdf.sh
bash ./install_elixir.sh
bash ./install_elixir_lsp.sh
bash ./install_node_and_install_npm_packages.sh
bash ./install_fisher_plugins.sh

echo -e "${BOLD}${GREEN}Setup finished.${RESET}"

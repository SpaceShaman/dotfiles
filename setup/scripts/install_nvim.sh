if ask "Do you want to install Neovim?"; then
  sudo rm -rf /opt/nvim
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
  chmod u+x nvim-linux-x86_64.appimage
  sudo mkdir -p /opt/nvim
  sudo mv nvim-linux-x86_64.appimage /opt/nvim/nvim

  sudo update-alternatives --install /usr/bin/vi vi /opt/nvim/nvim 60
  sudo update-alternatives --install /usr/bin/vim vim /opt/nvim/nvim 60
  sudo update-alternatives --install /usr/bin/editor editor /opt/nvim/nvim 60

  echo -e "${BOLD}${GREEN}Neovim installed.${RESET}"
fi

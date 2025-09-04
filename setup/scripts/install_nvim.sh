if ask "Do you want to install Neovim?"; then
  rm -rf /opt/nvim
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
  chmod u+x nvim-linux-x86_64.appimage
  mkdir -p /opt/nvim
  mv nvim-linux-x86_64.appimage /opt/nvim/nvim

  update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
  update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
  update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

  echo -e "${BOLD}${GREEN}Neovim installed.${RESET}"
fi

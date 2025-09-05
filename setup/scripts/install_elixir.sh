if ask "Do you want to install Elixir and Erlang?"; then
  if ! command -v asdf &> /dev/null; then
    info "asdf is not installed. Installing asdf..."
    . scripts/install_asdf.sh
  fi

  info "Installing Elixir and Erlang..."
  export ASDF_DATA_DIR="$HOME/.local/share/asdf"
  export PATH="$HOME/.local/bin:$ASDF_DATA_DIR/shims:$PATH"
  sudo apt -y install build-essential autoconf m4 libncurses-dev libwxgtk3.2-dev libwxgtk-webview3.2-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils openjdk-21-jdk
  asdf plugin add erlang
  asdf plugin add elixir
  asdf plugin update erlang
  asdf plugin update elixir
  asdf install erlang latest
  asdf set --home erlang latest
  asdf install elixir 1.18.4
  asdf set --home elixir 1.18.4
  success "Elixir and Erlang installed!"
fi

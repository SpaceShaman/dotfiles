if ask "Do you want to install Elixir and Erlang?"; then
  if ! command -v asdf &> /dev/null; then
    info "asdf is not installed. Installing asdf..."
    . scripts/install_asdf.sh
  fi

  info "Installing Elixir and Erlang..."
  asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
  asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git
  asdf plugin update erlang
  asdf plugin update elixir
  asdf install erlang latest
  asdf install elixir latest
  success "Elixir and Erlang installed!"
fi

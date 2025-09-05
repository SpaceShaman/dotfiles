if ask "Do you want to install asdf?"; then
  if ! command -v asdf &> /dev/null; then
    info "asdf is not installed. Installing asdf..."
    . scripts/install_asdf.sh
  fi

  info "Installing Elixir and Erlang..."
  asdf plugin add erlang
  asdf plugin add elixir
  asdf update
  asdf plugin-update
  asdf install erlang latest
  asdf install elixir latest
  success "Elixir and Erlang installed!"
fi

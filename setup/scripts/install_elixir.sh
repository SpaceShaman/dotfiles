if ask "Do you want to install Elixir and Erlang?"; then
  if ! command -v asdf &> /dev/null; then
    info "asdf is not installed. Installing asdf..."
    . scripts/install_asdf.sh
  fi

  info "Installing Elixir and Erlang..."
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

if ask "Do you want to install Elixir LSP?"; then
  info "Installing just"
  asdf plugin add just
  asdf install just latest
  asdf set --home just latest
  success "Just installed!"
  info "Installing ZIG"
  wget https://ziglang.org/download/0.14.1/zig-x86_64-linux-0.14.1.tar.xz
  tar -xf zig-x86_64-linux-0.14.1.tar.xz
  sudo mv zig-x86_64-linux-0.14.1 /home/ton618/.local/share/zig
  ln -sf $HOME/.local/share/zig/zig /home/ton618/.local/bin/zig
  rm -rf zig-x86_64-linux-0.14.1 zig-x86_64-linux-0.14.1.tar.xz
  success "ZIG installed!"
  info "Installing Elixir LSP..."
  git clone git@github.com:elixir-lang/expert.git
  cd expert
  just deps forge
  just deps engine
  just deps expert
  just install
  rm -rf expert
  success "Elixir LSP installed!"
fi

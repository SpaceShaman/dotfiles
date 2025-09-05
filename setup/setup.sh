#!/bin/bash
source lib/common.sh

info "Starting setup..."

. scripts/install_apt_packages.sh
. scripts/sync_dotfiles_with_system.sh
. scripts/setup_fish.sh
. scripts/install_displaylink_drivers.sh
. scripts/install_nvim.sh
. scripts/install_docker.sh
. scripts/install_lazygit.sh
. scripts/install_pyenv.sh
. scripts/install_poetry.sh
. scripts/install_translate-shell.sh
. scripts/update_node_and_install_npm_packages.sh
# . scripts/install_uv.sh
# . scripts/install_asdf.sh
# . scripts/install_elixir.sh
# . scripts/install_elixir_lsp.sh

success "Setup complete!"

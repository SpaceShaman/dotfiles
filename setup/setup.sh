#!/bin/bash
source lib/common.sh

if [[ "${1:-}" == "-y" ]]; then
  export SKIP_CONFIRMATIONS=1
fi

info "Starting setup..."

. scripts/install_apt_packages.sh
. scripts/sync_dotfiles_with_system.sh
. scripts/setup_fish.sh
. scripts/install_displaylink_drivers.sh
. scripts/install_nvim.sh
. scripts/install_docker.sh
. scripts/install_lazygit.sh
. scripts/install_uv.sh
. scripts/install_python_tools.sh
. scripts/install_translate-shell.sh
. scripts/update_node_and_install_npm_packages.sh
. scripts/install_hadolint.sh
. scripts/install_zk.sh
. scripts/install_teams.sh
# . scripts/install_asdf.sh
# . scripts/install_elixir.sh
# . scripts/install_elixir_ls.sh

if ask "Setup complete, do you want to restart your computer now?"; then
  sudo shutdown -r now
fi

success "Setup complete!"

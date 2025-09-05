#!/bin/bash
source lib/common.sh

if [[ "${1:-}" == "-y" ]]; then
  export SKIP_CONFIRMATIONS=1
fi

info "Starting setup..."

. scripts/test_script.sh

success "Setup complete!"

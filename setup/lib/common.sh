BOLD='\033[1m'
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLUE='\033[34m'
RESET='\033[0m'

function _frame() {
  local color="$1"
  local icon="$2"
  local msg="$3"
  local len=$(( ${#msg} + 6 ))
  local line=$(printf '━%.0s' $(seq 1 $len))
  echo -e "${color}┏${line}┓${RESET}"
  echo -e "${color}┃ ${icon} ${BOLD}${msg}${RESET}${color}  ┃${RESET}"
  echo -e "${color}┗${line}┛${RESET}"
}

function success() { _frame "${GREEN}" "✅" "$1"; }
function error()   { _frame "${RED}"   "❌" "$1"; }
function info()    { _frame "${BLUE}"  "🚀" "$1"; }

function ask() {
  if [[ "${SKIP_CONFIRMATIONS:-}" == "1" ]]; then
    return 0
  fi
  _frame "${YELLOW}" "❓" "$1 [y/N]"
  read -rs -n1 response
  if [[ "$response" =~ ^[yY]$ ]]; then
    return 0
  else
    return 1
  fi
}

set -euo pipefail
trap 'error "Script failed!"' ERR

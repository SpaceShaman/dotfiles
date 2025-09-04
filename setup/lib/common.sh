BOLD='\033[1m'
RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLUE='\033[34m'
RESET='\033[0m'

set -euo pipefail
trap 'echo -e "\n${RED}$(date +%T) ${RESET}Script failed with error: $1"' ERR

function success() {
  echo -e "${BOLD}${GREEN}$1${RESET}"
}

function error() {
  echo -e "${BOLD}${RED}$1${RESET}"
}

function info() {
  echo -e "${BOLD}${BLUE}$1${RESET}"
}

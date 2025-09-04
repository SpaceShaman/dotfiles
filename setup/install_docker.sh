#!/bin/bash

BOLD='\033[1m'
GREEN='\033[32m'
YELLOW='\033[33m'
RED='\033[31m'
RESET='\033[0m'

echo -e "${BOLD}${YELLOW}Installing Docker...${RESET}"

# Add Docker's official GPG key:
apt update
apt install -y ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update

# Install the Docker packages
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Manage Docker as a non-root user
##Create the docker group.
if ! grep -q docker /etc/group; then
    groupadd docker
fi

#Add your user to the docker group.
usermod -aG docker $USER

#Log out and log back in so that your group membership is re-evaluated.
newgrp docker

#Verify that you can run docker commands without sudo.
docker run hello-world

echo -e "${BOLD}${GREEN}Docker installed.${RESET}"

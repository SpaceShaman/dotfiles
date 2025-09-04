if ask "Do you want to install Docker?"; then
  # Add Docker's official GPG key:
  sudo apt update
  sudo apt install -y ca-certificates curl
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc

  # Add the repository to Apt sources:
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt update

  # Install the Docker packages
  sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

  # Manage Docker as a non-root user
  ##Create the docker group.
  if ! grep -q docker /etc/group; then
      groupadd docker
  fi

  #Add your user to the docker group.
  sudo usermod -aG docker $USER

  #Log out and log back in so that your group membership is re-evaluated.
  sudo newgrp docker

  success "Docker installed!"
fi

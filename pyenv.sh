#!/bin/bash

apt update
apt install -y \
    build-essential libssl-dev zlib1g-dev \
    ibbz2-dev libreadline-dev libsqlite3-dev \ 
    curl git libncursesw5-dev xz-utils tk-dev \
    libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

curl https://pyenv.run | bash

set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

echo -e "\033[1;32mPyenv installed successfully!\033[0m"
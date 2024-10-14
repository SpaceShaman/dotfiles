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

curl -sSL https://install.python-poetry.org | python3 -

echo -e "\033[1;32mPyenv and Poetry installed.\033[0m"
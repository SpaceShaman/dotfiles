if ask "Do you want to install Poetry and Pyenv?"; then
  sudo apt update
  sudo apt install -y build-essential libssl-dev zlib1g-dev \
      libbz2-dev libreadline-dev libsqlite3-dev curl git \
      libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

  sudo rm -rf $HOME/.pyenv
  curl -fsSL https://pyenv.run | bash

  sudo set -Ux PYENV_ROOT $HOME/.pyenv
  fish_add_path $PYENV_ROOT/bin

  curl -sSL https://install.python-poetry.org | python3 -

  success "Poetry and Pyenv installed!"
fi

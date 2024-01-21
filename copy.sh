#!/bin/bash

cp -R .[^.]* /home/$SUDO_USER/
sudo chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.moc
sudo chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.config/fish

echo -e "\033[1;32mCopy complete.\033[0m"
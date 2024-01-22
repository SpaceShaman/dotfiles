#!/bin/bash

cp -R .[^.]* /home/$SUDO_USER/
sudo chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.moc
sudo ln -s /home/$SUDO_USER/.icons/Arc /usr/share/icons/Arc

echo -e "\033[1;32mCopy complete.\033[0m"
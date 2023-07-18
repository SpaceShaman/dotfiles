#!/bin/bash

cp -R .[^.]* /home/$SUDO_USER/
chmod 755 /home/$SUDO_USER/.moc/config

echo -e "\033[1;32mCopy complete.\033[0m"
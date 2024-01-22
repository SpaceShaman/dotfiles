#!/bin/bash

cp -R .[^.]* /home/$SUDO_USER/
chown $SUDO_USER:$SUDO_USER /home/$SUDO_USER/.moc

# if /usr/share/icons/Arc doesn't exist, create it
if [ ! -d "/usr/share/icons/Arc" ]; then
    ln -s /home/$SUDO_USER/.icons/Arc /usr/share/icons/Arc
fi

echo -e "\033[1;32mCopy complete.\033[0m"
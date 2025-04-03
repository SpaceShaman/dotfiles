#!/bin/bash

# check theme file exists if not create it and add default theme
if [ ! -f ~/.config/theme ]; then
    echo "dark" > ~/.config/theme
fi
# get current theme
theme=$(cat ~/.config/theme)


# toggle theme
if [ "$theme" = "dark" ]; then
    # change system theme to light
    gsettings set org.gnome.desktop.interface color-scheme 'default'
    gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita'
    # change gtk theme to light
    sed -i 's/Adwaita-dark/Adwaita/' ~/.config/gtk-3.0/settings.ini
    sed -i 's/gtk-application-prefer-dark-theme=1/gtk-application-prefer-dark-theme=0/' ~/.config/gtk-3.0/settings.ini
    # change theme to light in alacritty
    sed -i 's/dark/light/' ~/.config/alacritty/alacritty.yml
    # change rofi theme to light
    sed -i 's/theme "dark"/theme "light"/' ~/.config/rofi/config.rasi
    # change theme to light in vscode
    sed -i 's/"workbench.colorTheme": "Ayu Dark Bordered"/"workbench.colorTheme": "Ayu Light Bordered"/g' ~/.config/Code/User/settings.json
    # change theme to light in awesome
    sed -i 's/dark.lua/light.lua/' ~/.config/awesome/rc.lua

    echo "light" > ~/.config/theme
    theme="light"
else
    # # change system theme to dark
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
    # change gtk theme to dark
    sed -i 's/Adwaita/Adwaita-dark/' ~/.config/gtk-3.0/settings.ini
    sed -i 's/gtk-application-prefer-dark-theme=0/gtk-application-prefer-dark-theme=1/' ~/.config/gtk-3.0/settings.ini
    # change alacritty theme to dark
    sed -i 's/light/dark/' ~/.config/alacritty/alacritty.yml
    # change rofi theme to dark
    sed -i 's/theme "light"/theme "dark"/' ~/.config/rofi/config.rasi
    # change theme to dark in vscode
    sed -i 's/"workbench.colorTheme": "Ayu Light Bordered"/"workbench.colorTheme": "Ayu Dark Bordered"/g' ~/.config/Code/User/settings.json
    # change theme to dark in awesome
    sed -i 's/light.lua/dark.lua/' ~/.config/awesome/rc.lua

    echo "dark" > ~/.config/theme
    theme="dark"
fi

echo -e "\033[1;32mTheme changed to: $theme\033[0m"
awesome-client 'awesome.restart()'
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
    # change theme to light in alacritty
    sed -i 's/gruvbox_dark/gruvbox_light/' ~/.alacritty.toml
    # change rofi theme to light
    sed -i 's/gruvbox-dark/gruvbox-light/' ~/.config/rofi/config.rasi
    # change theme to light in vscode
    sed -i 's/"workbench.colorTheme": "Gruvbox Dark Medium"/"workbench.colorTheme": "Gruvbox Light Medium"/g' ~/.config/Code/User/settings.json
    # change theme to light in awesome
    sed -i 's/gruvbox_dark/gruvbox_light/' ~/.config/awesome/rc.lua
    awesome-client 'awesome.restart()'

    echo "light" > ~/.config/theme
    theme="light"
else
    # change system theme to dark
    gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
    # change alacritty theme to dark
    sed -i 's/gruvbox_light/gruvbox_dark/' ~/.alacritty.toml
    # change rofi theme to dark
    sed -i 's/gruvbox-light/gruvbox-dark/' ~/.config/rofi/config.rasi
    # change theme to dark in vscode
    sed -i 's/"workbench.colorTheme": "Gruvbox Light Medium"/"workbench.colorTheme": "Gruvbox Dark Medium"/g' ~/.config/Code/User/settings.json
    # change theme to dark in awesome
    sed -i 's/gruvbox_light/gruvbox_dark/' ~/.config/awesome/rc.lua
    awesome-client 'awesome.restart()'

    echo "dark" > ~/.config/theme
    theme="dark"
fi

echo -e "\033[1;32mTheme changed to: $theme\033[0m"
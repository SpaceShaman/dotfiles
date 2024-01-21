#!/bin/bash

# check theme file exists if not create it and add default theme
if [ ! -f ~/.config/theme ]; then
    echo "dark" > ~/.config/theme
fi
# get current theme
theme=$(cat ~/.config/theme)


# toggle theme
if [ "$theme" = "dark" ]; then
    # change theme to light in alacritty
    sed -i 's/gruvbox_dark/gruvbox_light/' ~/.alacritty.toml
    # change theme to light in vscode
    sed -i 's/"workbench.colorTheme": "Gruvbox Dark Medium"/"workbench.colorTheme": "Gruvbox Light Medium"/g' ~/.config/Code/User/settings.json

    echo "light" > ~/.config/theme
    theme="light"
else
    # change alacritty theme to dark
    sed -i 's/gruvbox_light/gruvbox_dark/' ~/.alacritty.toml
    # change theme to dark in vscode
    sed -i 's/"workbench.colorTheme": "Gruvbox Light Medium"/"workbench.colorTheme": "Gruvbox Dark Medium"/g' ~/.config/Code/User/settings.json

    echo "dark" > ~/.config/theme
    theme="dark"
fi

echo -e "\033[1;32mTheme changed to: $theme\033[0m"
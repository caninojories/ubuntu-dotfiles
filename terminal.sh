#!/usr/bin/env sh

# pre-install
sudo apt install dconf-cli uuid-runtime

# install snazzy profile
wget -O - https://raw.githubusercontent.com/Mayccoll/Gogh/master/themes/snazzy.sh | bash

# set the profile
gnome-terminal --window-with-profile=Snazzy

# get the font-roboto
sudo apt install fonts-roboto

# @todo
# Set the Snazzy profile as the default
# dconf list '/org/gnome/terminal/legacy/profiles:/' (get the latest first in the list)
# dconf write '/org/gnome/terminal/legacy/profiles:/:profileId/font' "'Noto 9'"
# change the custom-font to DejaVu Sans Mono Book | 9

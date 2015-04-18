#!/usr/bin/env bash

DOT="$HOME/GITENVREPO/env"

echo "Initializing .bash_aliases"
cp -Rfxv $DOT/shell/.bash_aliases $HOME/.bash_aliases

echo "Initializing .bash_profile"
cp -Rfxv $DOT/shell/.bash_profile $HOME/.bash_profile

# Install zsh & oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing oh-my-zsh"
  #need this for fresh install before installing ohmyz.sh
  sudo apt-get install zsh
  curl -L http://install.ohmyz.sh | sh
fi
# chsh -s /usr/bin/zsh
# sleep 1

# Open Terminal Settings
#echo ""
#echo "Install Pongstr Base-16 Theme"
#open "$DOT/shell/Pongstr Base-16.terminal"
#sleep 1 # Wait a bit to make sure the theme is loaded

# Set Terminal Custom Theme
#echo ""
#echo "Setting Pongstr Base-16.terminal as the default theme."
#defaults write com.apple.terminal "Default Window Settings" -string "Pongstr Base-16.terminal"
#defaults write com.apple.terminal "Startup Window Settings" -string "Pongstr Base-16.terminal"

# Link .zshrc
echo ""
#echo "Install Pongstr zsh-theme"
cp -Rfxv "$DOT/shell/jories.zsh-theme" "$HOME/.oh-my-zsh/themes/jories.zsh-theme"
cp -Rfxv "$DOT/shell/.zshrc" "$HOME/.zshrc" && . ~/.zshrc

#cp -Rfxv "$DOT/shell/.zshrc" "$HOME/.zshrc" && source $HOME/.zshrc
sleep 1
killall Terminal

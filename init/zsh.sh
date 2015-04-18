#!/bin/bash

DOT="$HOME/GITENVREPO/env"

echo "$(tput setaf 6)INITIALIZING .bash_aliases"
echo "$(tput setaf 5)"
cp -Rfxv $DOT/shell/.bash_aliases $HOME/.bash_aliases
echo "$(tput setaf 1)========== FINISH =========="

echo "$(tput setaf 6)INITIALIZING .bash_profile"
echo "$(tput setaf 5)"
cp -Rfxv $DOT/shell/.bash_profile $HOME/.bash_profile
echo "$(tput setaf 1)========== FINISH =========="

# Install zsh & oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "$(tput setaf 6)INSTALLING OH-MY-ZSH"
  #need this for fresh install before installing ohmyz.sh
  sudo apt-get install zsh
  curl -L http://install.ohmyz.sh | sh
  echo "$(tput setaf 1)========== FINISH =========="
fi

# Link .zshrc
echo "$(tput setaf 6)START ASSIGN 'ZSH SHELL'"
#echo "Install Pongstr zsh-theme"
echo "$(tput setaf 5)"
cp -Rfxv "$DOT/shell/jories.zsh-theme" "$HOME/.oh-my-zsh/themes/jories.zsh-theme"
cp -Rfxv "$DOT/shell/.zshrc" "$HOME/.zshrc"
echo "$(tput setaf 1)========== FINISH ========="
#Use the zsh in our current shell
echo "$(tput setaf 6)MAKE THE ZSH OUR DEFAULT SHELL"
echo "$(tput setaf 5)"
sudo chsh -s $(which zsh) $(whoami)
echo "$(tput setaf 1)========== FINISH =========="

#cp -Rfxv "$DOT/shell/.zshrc" "$HOME/.zshrc" && source $HOME/.zshrc
sleep 1
echo "$(tput setaf 2)========== END!!! =========="

#!/usr/bin/env bash

DOT="$HOME/Projects/github/env"
echo ""
echo "$(tput setaf 6)INITIALIZING .bash_aliases"
echo "$(tput setaf 5)"
cp -Rfxv $DOT/shell/.bash_aliases $HOME/.bash_aliases
echo " "
echo "$(tput setaf 1)========== FINISH =========="
echo " "

echo "$(tput setaf 6)INITIALIZING .bash_profile"
echo "$(tput setaf 5)"
cp -Rfxv $DOT/shell/.bash_profile $HOME/.bash_profile
echo " "
echo "$(tput setaf 1)========== FINISH =========="
echo " "

# Install zsh & oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "$(tput setaf 6)INSTALLING OH-MY-ZSH"
  echo "$(tput setaf 5)"
  #need this for fresh install before installing ohmyz.sh
  sudo apt-get install zsh
  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "
fi

# Link .zshrc
echo "$(tput setaf 6)START ASSIGN 'ZSH SHELL'"
#echo "Install Pongstr zsh-theme"
echo "$(tput setaf 5)"
cp -Rfxv "$DOT/shell/jories.zsh-theme" "$HOME/.oh-my-zsh/themes/jories.zsh-theme"
cp -Rfxv "$DOT/shell/.zshrc" "$HOME/.zshrc"
echo " "
echo "$(tput setaf 1)========== FINISH ========="
echo " "
#Use the zsh in our current shell
echo "$(tput setaf 6)MAKE THE ZSH OUR DEFAULT SHELL"
echo "$(tput setaf 5)"
#sudo chsh -s /bin/zsh
#load the zshrc
#. ~/.zshrc
echo "$(tput setaf 1)========== FINISH =========="

sleep 3
sudo chsh -s $(which zsh)
echo " "
echo " "
echo "$(tput setaf 2)========== END!!! =========="

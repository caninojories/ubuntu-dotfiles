#!/usr/bin/env bash

# Install Git latest version
# We need git for zsh dependencies
if [ ! -f "/usr/bin/git" ]; then
  echo ""
  echo "$(tput setaf 6) ⇣ GIT"
  echo "$(tput setaf 5)"
  sudo apt update
  sudo apt install git
else
  echo ""
  echo "$(tput setaf 6)AWESOME! GIT is INSTALLED! Now Updating Packages..."
  echo "$(tput setaf 5)"
  sudo apt update
  sudo apt autoremove
  sudo apt autoclean
  sudo apt clean
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "$(tput setaf 6) ⇣ OH-MY-ZSH"
  echo "$(tput setaf 5)"
  #need this for fresh install before installing ohmyz.sh
  sudo apt install zsh
  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
fi

# Link .zshrc
echo ""
echo "$(tput setaf 6) ⇣ Jories zsh-theme"
echo "$(tput setaf 5)"
cp -Rfxv "$PWD/Jories Base-16.zsh-theme" "$HOME/.oh-my-zsh/themes/jories.zsh-theme"
cp -Rfxv "$PWD/zshrc" "$HOME/.zshrc"

#make the zsh our default
sleep 2
chsh -s $(which zsh)
sleep 3
#sudo shutdown -r 0

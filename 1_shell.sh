#!/usr/bin/env bash
DOT="$HOME/Projects/github/digitalOcean-Ubuntu-Dev"

# Install Git latest version
# We need git for zsh dependencies
if [ ! -f "/usr/bin/git" ]; then
  echo ""
  echo "$(tput setaf 6) ⇣ GIT"
  echo "$(tput setaf 5)"
  sudo add-apt-repository ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install git
else
  echo ""
  echo "$(tput setaf 6)AWESOME! GIT is INSTALLED! Now Updating Packages..."
  echo "$(tput setaf 5)"
  sudo apt-get update
  sudo apt-get autoremove
  sudo apt-get autoclean
  sudo apt-get clean
fi

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "$(tput setaf 6) ⇣ OH-MY-ZSH"
  echo "$(tput setaf 5)"
  #need this for fresh install before installing ohmyz.sh
  sudo apt-get install zsh
  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
fi

# Link .zshrc
echo ""
echo "$(tput setaf 6) ⇣ Jories zsh-theme"
echo "$(tput setaf 5)"
cp -Rfxv "$DOT/bin/Jories Base-16.zsh-theme" "$HOME/.oh-my-zsh/themes/jories.zsh-theme"
cp -Rfxv "$DOT/bin/.zshrc" "$HOME/.zshrc"

#make the zsh our default
sleep 2
chsh -s $(which zsh)
sleep 3
sudo shutdown -r 0

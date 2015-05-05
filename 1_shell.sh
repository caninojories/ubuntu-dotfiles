#!/usr/bin/env bash
DOT="$HOME/Projects/github/digitalOcean-Ubuntu-Dev"

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
cp -Rfxv "$DOT/bin/.zshrc" "$HOME/.zshrc" && . $HOME/.zshrc

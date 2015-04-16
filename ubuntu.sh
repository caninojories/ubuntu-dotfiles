#!/bin/bash

# ============================================================================
# Install curl
# ============================================================================

sudo apt-get update
sudo apt-get install curl

#for source to work download zsh
sudo apt-get install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
sudo chsh -s $(which zsh) $(whoami)

#before curling just download this first
\curl -sSL https://rvm.io/mpapis.asc | gpg --import -
#get the stable version of rvm
\curl -sSL https://get.rvm.io | bash -s stable
source $PATH:$HOME/.rvm/scripts/rvm
sudo echo "export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting" >>  $PATH:$HOME/.zshrc
#install rvm dependencies
rvm requirements

echo "========== FINISH!!! =========="

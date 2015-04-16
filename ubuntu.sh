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
sudo echo "export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting"
#install rvm dependencies
rvm requirements

#before getting the linuxbrew
#install first the dependecies
#https://github.com/Homebrew/linuxbrew
sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
#get the latest linuxbrew from ruby
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
#add the path for linuxbrew
sudo echo "export PATH="$HOME/.linuxbrew/bin:$PATH""
sudo echo "export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH""
sudo echo "export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH""

echo "========== FINISH!!! =========="

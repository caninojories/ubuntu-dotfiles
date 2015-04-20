#!/bin/bash

# ============================================================================
# Install curl
# ============================================================================

sudo apt-get update
sudo apt-get install curl

if ! whereis brew; then
  echo "Download and install homebrew"
  echo ""
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

  # Run Brew doctor before anything else
  brew doctor
else
  echo "Awesome! Homebrew is installed! Now updating..."
  echo ""
  brew upgrade
  brew update
fi

cp -R $HOME/GITENVREPO/env/shell/.bashrc $HOME/.bashrc
#cp -R $HOME/GITENVREPO/env/shell/.bash_alias $HOME/.bash_alias
cp -R $HOME/GITENVREPO/env/shell/.bash_profile $HOME/.bash_profile

#before curling just download this first
\curl -sSL https://rvm.io/mpapis.asc | gpg --import -
#get the stable version of rvm
\curl -sSL https://get.rvm.io | bash

sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get update
sudo apt-get clean

echo "========== FINISH!!! =========="

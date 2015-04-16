#!/usr/bin/bash

# ============================================================================
# Install curl
# ============================================================================

sudo apt-get update
sudo apt-get install curl

#before curling just download this first
\curl -sSL https://rvm.io/mpapis.asc | gpg --import -
#get the stable version of rvm
\curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm
sudo echo "export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting"
#install rvm dependencies
rvm requirements


echo "========== FINISH!!! =========="

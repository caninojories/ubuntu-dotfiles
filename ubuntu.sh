#!/bin/bash

# ============================================================================
# Install curl
# ============================================================================
# Update Aptitude

# Install Git latest version
if [ ! -f "/usr/bin/git" ]; then
  echo "$(tput setaf 6)DOWNLOADING GIT"
  echo "$(tput setaf 5)"
  sleep 5
  sudo add-apt-repository ppa:git-core/ppa
  sudo apt-get update
  sudo apt-get install git
  sleep 3
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "
else
  echo "$(tput setaf 6)AWESOME! GIT is INSTALLED! Now Updating Packages..."
  echo "$(tput setaf 5)"
  sleep 5
  #sudo apt-get update
  sudo apt-get autoremove
  sudo apt-get autoclean
  sudo apt-get clean
  sleep 3
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "
fi

#install curl before running condition
echo "$(tput setaf 6)DOWNLOADING CURL"
echo "$(tput setaf 5)"
sleep 5
sudo apt-get install curl
sleep 3
echo " "
echo "$(tput setaf 1)========== FINISH =========="
echo " "

if [ ! -f "/usr/bin/curl" ]; then
  echo "$(tput setaf 6)CURL RVM"
  echo "$(tput setaf 5)"
  sleep 5
  #before curling just download this first
  \curl -sSL https://rvm.io/mpapis.asc | gpg --import -
  #get the stable version of rvm
  \curl -sSL https://get.rvm.io | bash
  sleep 3
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "
fi


if [ ! -d "$HOME/.linuxbrew" ]; then
  echo "$(tput setaf 6)DOWNLOADING And INSTALLING HOMEBREW"
  echo "$(tput setaf 5)"
  sleep 5
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  sleep 3
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "
  # Run Brew doctor before anything else
  echo "$(tput setaf 6)RUNNING BREW DOCTOR"
  echo "$(tput setaf 5)"
  sleep 5
  brew doctor
  sleep 3
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "
else
  echo "$(tput setaf 6)AWESOME! HOMEBREW is INSTALLED! Now Updating..."
  echo "$(tput setaf 5)"
  sleep 5
  brew upgrade
  brew update
  sleep 3
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "
fi
echo "$(tput setaf 6)COPY .BASHRC And .BASH_PROFILE"
echo "$(tput setaf 5)"
sleep 5
cp -R $HOME/Projects/github/env/shell/.bashrc $HOME/.bashrc
cp -R $HOME/Projects/github/env/shell/.bash_profile $HOME/.bash_profile
sleep 3
echo " "
echo "$(tput setaf 1)========== FINISH =========="
echo " "

echo "$(tput setaf 6)UPDATE REMOVE AUTOCLEAN CLEAN PACKAGES"
echo "$(tput setaf 5)"
sleep 5
sudo apt-get update
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean
sleep 3
echo " "
echo "$(tput setaf 1)========== FINISH =========="

sleep 3
echo " "
echo " "
echo "$(tput setaf 2)========== END!!! =========="

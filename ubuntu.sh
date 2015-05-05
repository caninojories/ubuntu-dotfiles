#!/bin/bash

if [ ! -f "/usr/bin/curl" ]; then
  #install curl before running condition
  echo "$(tput setaf 6) ⇣ CURL"
  echo "$(tput setaf 5)"
  sudo apt-get install curl
fi

echo "$(tput setaf 6) Copy .LINUXBREWSRC"
echo "$(tput setaf 5)"
cp -R $HOME/Projects/github/digitalOcean-Ubuntu-Dev/source/.linuxbrewsrc $HOME/.linuxbrewsrc

# Function to install Homebrew Formulas:
install_formula () {
  echo ""
  echo "Installing Homebrew Packages:"

  echo ""
  echo "  ☕ openssl"
  brew install openssl

  echo ""
  echo "  ☕ node"
  brew install node

  echo ""
  echo "  ☕ mongodb"
  brew install mongo
  mkdir $HOME/.mongodb-data

  echo ""
  echo "  ☕ elasticsearch"
  brew install elasticsearch

  echo ""
  echo "  ☕ ssh-copy-id"
  brew install ssh-copy-id

  echo ""
  echo "  ☕ vim (overriding system vim)"
  brew install vim --override-system-vi

  # Cleanup
  echo ""
  echo " ✄ Cleaning-up Homebrew installation..."
  brew cleanup
}

if [ ! -d "$HOME/.linuxbrew" ]; then

  echo "$(tput setaf 6) ⇣ and Installing HOMEBREW"
  echo "$(tput setaf 5)"
  sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
  git clone https://github.com/Homebrew/linuxbrew.git ~/.linuxbrew
  . ~/.linuxbrewsrc
done
  # Run Brew doctor before anything else
  echo "$(tput setaf 6) ☕ ⚕"
  echo "$(tput setaf 5)"
  sleep 5
  brew doctor
else
  echo "$(tput setaf 6)AWESOME! HOMEBREW is INSTALLED! Now Updating..."
  echo "$(tput setaf 5)"
  brew upgrade
  brew update
fi


  # Install Homebrew Formulas
while true; do
  read -p "Would you like to install Homebrew formulas? [y/n] " answer
  echo ""
  case $answer in
    [y]* ) install_formula; break;;
    [n]* ) break;;
    * ) echo "Please answer Y or N.";;
  esac

echo "$(tput setaf 6)UPDATE REMOVE AUTOCLEAN CLEAN PACKAGES"
echo "$(tput setaf 5)"
sleep 5
sudo apt-get update
sudo apt-get autoremove
sudo apt-get autoclean
sudo apt-get clean

sleep 3
echo " "
echo " "
echo "$(tput setaf 2)========== END!!! =========="

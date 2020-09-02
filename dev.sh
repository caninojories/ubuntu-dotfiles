#!/usr/bin/env sh

if test ! $(which brew); then
  echo "$(tput setaf 6) ⇣ and Installing HOMEBREW"
  echo "$(tput setaf 5)"
  sudo apt install build-essential curl file
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/canino_jories/.zshrc
else
  echo "$(tput setaf 6)AWESOME! HOMEBREW is INSTALLED! Now Updating..."
  echo "$(tput setaf 5)"
  brew upgrade
  brew doctor
  brew update
fi

# Function to install Homebrew Formulas:
install_formula () {
  echo ""
  echo "Installing Homebrew Packages:"

  echo ""
  echo "  ☕ openssl"
  brew install openssl

  echo ""
  echo " ☕ NVM"
  brew install nvm

  # Cleanup
  echo ""
  echo " ✄ Cleaning-up Homebrew installation..."
  brew cleanup
}

  # Install Homebrew Formulas
while true; do
  read -p "Would you like to install Homebrew formulas? [y/n] " answer
  echo ""
  case $answer in
    [y]* ) install_formula; break;;
    [n]* ) break;;
    * ) echo "Please answer Y or N.";;
  esac
done

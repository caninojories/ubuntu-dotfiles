#!/bin/bash

# ============================================================================
# Install curl
# ============================================================================

sudo apt-get update
sudo apt-get install curl

check () { type -t "${@}" > /dev/null 2>&1; }
debInst() {
    dpkg-query -Wf'${db:Status-abbrev}' "$1" 2>/dev/null | grep -q '^i'
}

if whereis brew; then
    echo 'Why yes, the package "%s" _is_ installed!\n' "$brew"
else
    echo 'I regret to inform you that the package "%s" is not currently installed.\n' "$1"
fi

if check brew; then
  echo "Awesome! Homebrew is installed! Now updating..."
  echo ""
  brew upgrade
  brew update
fi

if ! check brew; then
  echo "Download and install homebrew"
  echo ""
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"

  # Run Brew doctor before anything else
  brew doctor
fi

#before curling just download this first
\curl -sSL https://rvm.io/mpapis.asc | gpg --import -
#get the stable version of rvm
\curl -sSL https://get.rvm.io | bash -s stable && rvm reload

echo "========== FINISH!!! =========="

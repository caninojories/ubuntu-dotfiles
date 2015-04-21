#!/bin/bash

if [ ! -f "/usr/local/rvm/rubies/ruby-2.2.2/bin/ruby" ] ; then
  echo ""
  echo "$(tput setaf 6)INSTALLING Ruby 2.2.2"
  echo "$(tput setaf 5)"
  sleep 5
  rvm install 2.2.2 --disable-binary
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "

  sleep 1
  rvm reload

  echo ""
  echo "  >   Set 2.2.2 as the default version"
  echo ""
  echo "$(tput setaf 6)SET 2.2.2 as the DEFAULT VERSION"
  echo "$(tput setaf 5)"
  sleep 5
  rvm use ruby-2.2.2 --default
  echo " "
  echo "$(tput setaf 1)========== FINISH =========="
  echo " "
fi

echo " "
echo " "
echo "$(tput setaf 2)========== END!!! =========="

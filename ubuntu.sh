#!/usr/bin/bash

# ============================================================================
# Install curl
# ============================================================================

sudo apt-get update
sudo apt-get curl

#get the stable version of rvm
\curl -L https://get.rvm.io | bash -s stable
#install rvm dependencies
rvm requirements

#!/usr/bin/env bash

# List Packages that will be installed
node_modules=(
  gulp
)

# Install Node Packages
npm install -g  ${node_modules[@]}

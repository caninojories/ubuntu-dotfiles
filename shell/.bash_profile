#!/usr/bin/sh
#To ignore warning
#You have '~/.profile' file, you might want to load it
#source ~/.profile
# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Export PATH after RVM installation
export PATH="/usr/local/bin:/usr/local/rvm/gems/ruby-2.2.2@global/bin:$PATH"
# Make /Applications the default location of apps
#export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Load RVM into a shell session *as a function*
[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"

# Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

# Android SDK
#export ANDROID_SDK=/usr/local/Cellar/android-sdk/24.0.2

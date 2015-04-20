#!/usr/bin/sh
#To ignore warning
#You have '~/.profile' file, you might want to load it
source ~/.profile
# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Export PATH after RVM installation
export PATH="/usr/local/bin:$HOME/.rvm/gems/ruby-2.1.3@global/bin:$PATH"
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
# Make /Applications the default location of apps
#export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

# Android SDK
#export ANDROID_SDK=/usr/local/Cellar/android-sdk/24.0.2

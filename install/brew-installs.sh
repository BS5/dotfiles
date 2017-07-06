#!/usr/bin/env sh

if test ! $(which brew); then
  "Installing homebrew"
  -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install Xcode Command Line Tools
xcode-select --install


# General
# 
brew install zsh
brew install tmux
brew install dark-mode              # toggle OS X dark mode
brew install lynx                   # text browser
brew install the_silver_searcher    # file system search
brew install speedtest_cli          # connection speed test
brew install calc                   # calculator
brew install hh                     # history browser
brew install ncdu                   # disk usage client
brew install nmap
brew install ack
brew install tree
brew install wget

# Developer Tools
#
brew install vim
brew install git
brew install tig
brew install gist
brew install coreutils
brew install node
brew install redis
brew install postgresql

brew install rbenv
brew install ruby-build

# Java is required for future installs
brew cask install java

# Android
brew install ant
brew install maven
brew install gradle
brew install android-sdk

# Utils
brew install rbenv-default-gems
brew install ssh-copy-id
brew install awscli
brew install imagemagick
brew install openssl --force
brew install yarn
brew install watchman               # file change watcher

# Other
#
brew install wireshark --with-qt

# Cask Installs
#
brew cask install google-chrome
brew cask install slack
brew cask install virtualbox
brew cask install intellij-idea
brew install jq                   # JSON parser
brew install ffmpeg
brew install htop
brew cask install vagrant
brew cask install vlc


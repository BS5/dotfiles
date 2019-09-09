#!/usr/bin/env bash

# Installs tools for React Native development environment

xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install rbenv
rbenv install 2.6.3
rbenv global 2.6.3
gem install xcodeproj
brew install node
brew install watchman
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
npm install -g react-native-cli

echo "All done."

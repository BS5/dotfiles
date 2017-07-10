#!/usr/bin/env bash

# Install Caskroom
brew tap caskroom/cask
brew tap caskroom/versions

# Install packages
apps=(
  android-sdk            # 
  android-studio         # 
  atom                   # 
  caffeine               # 
  dash                   # 
  diffmerge              # 
  geektool               # 
  github-desktop         # 
  google-chrome          # 
  google-drive           # 
  gyazo                  # 
  firefox                # 
  imagealpha             # 
  imageoptim             # 
  intellij-idea          # 
  intellij-idea-ce       # 
  iterm2                 # 
  java                   # Java Standard Edition Development Kit
  macdown                # 
  screenflow             # 
  slack                  # 
  sourcetree             # 
  spectacle              # 
  vagrant                # 
  virtualbox             # 
  vlc                    # 
)
brew cask install "${apps[@]}"

# Quick Look Plugins
plugins=(
  betterzipql            # 
  provisionql            # 
  qlcolorcode            #  
  qlmarkdown             # 
  qlimagesize            # 
  qlprettypatch          #  
  qlstephen              # 
  quicklook-csv          # 
  quicklook-json         # 
  quicklookapk           #
  suspicious-package     # 
  webpquicklook          # 
)
brew cask install "${plugins[@]}"


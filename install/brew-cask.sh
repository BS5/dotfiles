#!/usr/bin/env bash

# Install Caskroom
brew tap caskroom/cask
brew tap caskroom/versions

# Install packages
apps=(
  android-sdk            # Android Software Development Kit
  android-ndk            # Android NDK
  android-studio         # Android Studio
  atom                   # Atom Text Editor
  caffeine               # System Utility
  dash                   # Documentation
  diffmerge              # Merge tool
  geektool               # 
  github-desktop         # 
  google-chrome          # Chrome Web Browser
  google-drive           # Google Drive Utility
  gyazo                  # 
  firefox                # Firefox Web Browser
  intel-haxm             # Intel Hardware Accelerated Execution Manager
  imagealpha             # 
  imageoptim             # 
  intellij-idea          # Development IDE
  intellij-idea-ce       # Development IDE
  iterm2                 # Terminal
  macdown                # Markdown Editor
  screenflow             # 
  slack                  # Community Communication Tool
  sourcetree             # Visual Git tool
  spectacle              # App window managment
  sublime-text           # Text editor
  vagrant                # Virtual machine management
  virtualbox             # Virtual machine management
  vlc                    # Video player
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


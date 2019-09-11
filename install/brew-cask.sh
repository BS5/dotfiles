#!/usr/bin/env bash

# Run this file straight from the web:
# $ curl -fsSL https://raw.githubusercontent.com/bs5/dotfiles/master/install/brew-cask.sh | sh

# Install Caskroom
brew tap caskroom/cask
brew tap caskroom/versions

# Install packages
apps=(
  android-studio         # Android Studio
  atom                   # Atom Text Editor
  caffeine               # System Utility
  dash                   # Documentation
  diffmerge              # Merge tool
  geektool               # Add scripts and info to your dekstop
  github-desktop         # Github Application
  google-chrome          # Chrome Web Browser
  google-drive           # Google Drive Utility
  firefox                # Firefox Web Browser
  intel-haxm             # Intel Hardware Accelerated Execution Manager
  imagealpha             # Optimize PNG files
  imageoptim             # Optimize images for the web
  intellij-idea          # Development IDE
  intellij-idea-ce       # Development IDE
  iterm2                 # Terminal
  macdown                # Markdown Editor
  slack                  # Community Communication Tool
  sourcetree             # Visual Git tool
  spectacle              # Window managment
  sublime-text           # Text editor
  vagrant                # Virtual machine management
  virtualbox             # Virtual machine management
  vlc                    # Video player
)
brew cask install "${apps[@]}"

# Quick Look Plugins
plugins=(
  betterzipql            # Preview archives
  provisionql            # Preview provision information
  qlcolorcode            # Preview source code files in color
  qlmarkdown             # Preview markdown files
  qlimagesize            # Display image size and resolution
  qlstephen              # Preview plain text files without an extension
  quicklook-csv          # Preview CSV files
  quicklook-json         # Preview JSON files
  quicklookapk           # Display Android APK file information
  suspicious-package     # Inspect installer packages
  webpquicklook          # Preview webp image files
)
brew cask install "${plugins[@]}"

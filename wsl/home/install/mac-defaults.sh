#!/usr/bin/env bash

# Set OS X default settings

# inspiration from: 
#   https://github.com/nicksp/dotfiles
#   https://dotfiles.github.io/

############################################################
# Keyboard
############################################################

# Make key rate faster
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

############################################################
# Screen
############################################################

# Require password immediately after sleep or screen saver.
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Enable sub-pixel rendering on non-Apple LCDs.
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Disable waking up when lid opens
sudo pmset lidwake 0

############################################################
# FINDER
############################################################

# Save screenshots to desktop and disable the horrific drop-shadow.
defaults write com.apple.screencapture location "${HOME}/Desktop/Screenshots"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show the ~/Library folder.
chflags nohidden ~/Library

# Always open everything in Finder's column view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show hidden files and file extensions by default
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Allow text-selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Display system time on login
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo Time

############################################################
# DISABLE WARNINGS
############################################################

# Disable the warning when changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

############################################################
# DOCK
############################################################
# Add several spacers
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

# Add recent files to dock
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'

# Make Dock app icons spring-loaded
defaults write com.apple.dock enable-spring-load-actions-on-all-items -boolean YES

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true






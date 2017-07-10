#!/usr/bin/env bash

if test ! $(which brew); then
  "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install Xcode Command Line Tools
xcode-select --install


# General
# 
apps=(
  zsh                    # UNIX shell (command interpreter)
  tmux                   # Terminal multiplexer
  dark-mode              # Control the macOS dark mode from the command-line
  lynx                   # Text-based web browser
  the_silver_searcher    # Code-search similar to ack
  speedtest_cli          # Command-line interface for https://speedtest.net bandwidth tests
  calc                   # Arbitrary precision calculator
  hh                     # Bash and zsh history suggest box
  ncdu                   # NCurses Disk Usage
  nmap                   # Port scanning utility for large networks
  grep                   # GNU grep, egrep and fgrep
  ack                    # Search tool like grep, but optimized for programmers
  tree                   # Display directories as trees (with optional color/HTML output)
  wget                   # Internet file retriever

# Developer Tools
  vim                    # Vi "workalike" with many additional features
  git                    # Distributed revision control system
  git-flow               # Extensions to follow Vincent Driessen's branching model
  tig                    # Text interface for Git repositories
  gist                   # Command-line utility for uploading Gists
  hub                    # Add GitHub support to git on the command-line
  coreutils              # GNU File, Shell, and Text utilities
  node                   # Platform built on V8 to build network applications
  redis                  # Persistent key-value database, with built-in net interface
  postgresql             # Object-relational database system
  rbenv                  # Ruby version manager
  ruby-build             # Install various Ruby versions and implementations

# Android
  ant                    # Java build tool
  maven                  # Java-based project management
  gradle                 # Build system based on the Groovy language

# Utils
  rbenv-default-gems     # Auto-installs gems for Ruby installs
  ssh-copy-id            # Add a public key to a remote machine's authorized_keys file
  awscli                 # Official Amazon AWS command-line interface
  imagemagick            # Tools and libraries to manipulate images in many formats
  openssl --force        # SSL/TLS cryptography library
  yarn                   # JavaScript package manager
  watchman               # Watch files and take action when they change

# Other
  wireshark --with-qt    # Graphical network analyzer and capture tool
  jq                     # JSON parser
  ffmpeg                 # Play, record, convert, and stream audio and video
  htop                   # Improved top
  mtr                    # 'traceroute' and 'ping' in a single tool
  wifi-password          # Show the current WiFi network password
)
brew install "${apps[@]}"

brew cleanup


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
  # OS X Utilities
  calc                   # Arbitrary precision calculator
  ffmpeg                 # Play, record, convert, and stream audio and video

  # Shell Utilities
  coreutils              # GNU File, Shell, and Text utilities
  zsh                    # UNIX shell (command interpreter)
  tmux                   # Terminal multiplexer
  hh                     # Bash and zsh history suggest box
  ncdu                   # NCurses Disk Usage
  grep                   # GNU grep, egrep and fgrep
  ack                    # Search tool like grep, but optimized for programmers
  tree                   # Display directories as trees (with optional color/HTML output)
  wget                   # Internet file retriever
  htop                   # Improved top
  the_silver_searcher    # Code-search similar to ack
  lynx                   # Text-based web browser
  watchman               # Watch files and take action when they change
  imagemagick            # Tools and libraries to manipulate images in many formats
  ssh-copy-id            # Add a public key to a remote machine's authorized_keys file

  # Network
  nmap                   # Port scanning utility for large networks
  speedtest_cli          # Command-line interface for https://speedtest.net bandwidth tests
  wireshark --with-qt    # Graphical network analyzer and capture tool
  mtr                    # 'traceroute' and 'ping' in a single tool
  wifi-password          # Show the current WiFi network password
  openssl --force        # SSL/TLS cryptography library
  openconnect            # Open client for Cisco AnyConnect VPN
                         # See: https://gist.github.com/moklett/3170636

  # Developer Tools
  vim                    # Vi "workalike" with many additional features
  git                    # Distributed revision control system
  git-flow               # Extensions to follow Vincent Driessen's branching model
  tig                    # Text interface for Git repositories
  gist                   # Command-line utility for uploading Gists
  hub                    # Add GitHub support to git on the command-line
  node                   # Platform built on V8 to build network applications
  redis                  # Persistent key-value database, with built-in net interface
  postgresql             # Object-relational database system
  rbenv                  # Ruby version manager
  ruby-build             # Install various Ruby versions and implementations
  yarn                   # JavaScript package manager
  awscli                 # Official Amazon AWS command-line interface
  rbenv-default-gems     # Auto-installs gems for Ruby installs
  jq                     # JSON parser
  markdown               # Text-to-HTML conversion tool
  grip                   # GitHub Markdown previewer
  jenv                   # Manage your Java environment

  # Android
  ant                    # Java build tool
  maven                  # Java-based project management
  gradle                 # Build system based on the Groovy language
)
brew install "${apps[@]}"

brew cleanup


#!/bin/sh

if test ! $(which brew); then
  echo "Installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# ruby tools
brew install rbenv ruby-build


# Having problems installing capybara-webkit?
gem uninstall capybara-webkit
gem uninstall capybara # if it complains about dependencies 'gem uninstall' them
brew remove qt
brew remove qt5 # if you've been playing around
# From a clean environment (restart your terminal):

brew tap homebrew/versions
brew install qt55
brew linkapps qt55
brew link --force qt55



# cli tools
brew install ack
brew install tree
brew install wget

# development server setup
brew install nginx

# development tools
brew install git
brew install tig


# brew install hub
# brew install fzf
# brew install macvim --override-system-vim
# brew install reattach-to-user-namespace
brew install tmux
brew install zsh
# brew install highlight
# brew install z
# brew install markdown
# brew install diff-so-fancy
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

exit 0

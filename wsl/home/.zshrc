export ZSH="/home/brendan/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

export VISUAL=vi
export EDITOR="$VISUAL"

HIST_STAMPS="mm/dd/yyyy"
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# export LANG=en_US.UTF-8
# export LC_CTYPE=en_US.UTF-8

# plugins=(adb docker git gradle jsontools npm osx postgres rbenv rsync ruby svn-fast-info xcode)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Dot files config
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Subversion aliases
alias sup="svn info --show-item revision && svn up"

# Ruby config
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Android Development -------------------------------------

source "$HOME/.android-config"

# ---------------------------------------------------------

# NPM config
export PATH="$HOME/.npm-global/bin:$PATH"

# Vagrant config for WSL
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

# Fun with cheat sheets
function cs() {
  curl -m 7 "https://cheat.sh/$1"
}

function G() {
  grep -iR "$1" .
}

# Use vi on the command line
set -o vi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k" # robbyrussel, bullet-train
HIST_STAMPS="mm/dd/yyyy"
HISTSIZE=9999
HISTFILESIZE=2000

plugins=(
  adb 
  docker
  git 
  gradle 
  jsontools 
  macos 
  npm 
  osx
  postgres 
  rbenv 
  rsync 
  ruby 
  svn 
  svn-fast-info 
  xcode
)

source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

export LANG=en_US.UTF-8
export EDITOR='vim'
export VISUAL='vim'

bindkey -v

# Android Development
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK="$ANDROID_HOME"
export ANDROID_SDK_ROOT="$ANDROID_HOME"

export PATH="$ANDROID_SDK_ROOT/emulator:$PATH"
export PATH="$ANDROID_SDK_ROOT/tools:$PATH"
export PATH="$ANDROID_SDK_ROOT/tools/bin:$PATH"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$PATH"

alias gw='./gradlew'

# NODE / n
export N_PREFIX=$HOME/.npm-packages
export PATH=$N_PREFIX/bin:$PATH
export npm_config_arch=x64
export NODE_BINARY="$HOME/.npm-packages/bin/node"
#export NODE_OPTIONS=--openssl-legacy-provider

# Ruby and rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
alias be='bundle exec'

# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

alias intel='arch -x86_64'

# Vim
alias vd='vimdiff'

set -o vi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

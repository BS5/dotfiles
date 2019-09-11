# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k" # robbyrussel, bullet-train
HIST_STAMPS="mm/dd/yyyy"
HISTSIZE=9999
HISTFILESIZE=2000

plugins=(adb docker git gradle jsontools npm osx postgres rbenv rsync ruby svn-fast-info xcode)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8
export EDITOR='vim'
export VISUAL='vim'

bindkey -v

source $HOME/.aliases

export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"

# ANDROID
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Add path for brew
export PATH="$PATH:/usr/local/sbin"

# Add path for fastlane
export PATH="$PATH:$HOME/.fastlane/bin"

# Add path for custom scripts
export PATH="$PATH:$HOME/bin"

# Ruby and rbenv
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

$HOME/bin/geektool/ips

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Custom scripts

source $HOME/notes/notes

# Set command line mode to vi
set -o vi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

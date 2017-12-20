# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export TERM="xterm-256color"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="powerlevel9k/powerlevel9k"

# Theme from:
# https://github.com/caiogondim/bullet-train-oh-my-zsh-theme
ZSH_THEME="bullet-train"

# Set default user
export DEFAULT_USER="bschulz"

# Set default editor
export EDITOR=vim
export VISUAL=vim

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Git Aliases
alias g='git'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m' # requires you to type a commit message
alias gp='git push'
alias gl='git pull'
alias gu='git up'
alias gum='git up; be rails db:migrate'
alias glg='git log --oneline --abbrev-commit --all --graph --decorate --color'
alias gflg="git log --graph --pretty=format:'%Cred%h%Creset %C(bold blue)%an%C(reset) - %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias grm='git rm $(git ls-files --deleted)'

# Gist Aliases
alias gist='gist -s -c' # Copy resulting gist url to clipboard

# ls Aliases to match servers
# alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -alCF'

# Lock screen
alias lock='/System/Library/CoreServices/Menu\ Extras/user.menu/Contents/Resources/CGSession -suspend'

# Set vi editor to vim
alias vi="vim"

# Set v to vagrant
alias v="vagrant"

# Clear DNS cache
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;echo 'cache flushed'"

# Bundle Exec
alias be='bundle exec'
alias ber='bundle exec rake'
alias berc='bundle exec rails console'

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to  show in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx git git-flow ruby rails rake pow powder xcode gradle)

source $ZSH/oh-my-zsh.sh

# iTerm2 Shell Integrations
source ~/.iterm2_shell_integration.`basename $SHELL`

# Base system paths
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Applications

# Homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# User bin
export PATH=~/bin:$PATH

# Android
export JAVA_HOME=`/usr/libexec/java_home -v '1.8*'`
export ANDROID_HOME="/usr/local/share/android-sdk"
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

# ANT
export ANT_HOME=/usr/local/opt/ant/libexec

# Gradle
export GRADLE_HOME=/usr/local/bin/gradle

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Paths for Android Development
export PATH=$ANT_HOME/bin:$PATH
export PATH=$MAVEN_HOME/bin:$PATH
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/build-tools/26.0.0:$PATH

# NPM
export PATH=/usr/local/share/npm/bin:$PATH

# Set case sensitivity off
set completion-ignore-case on

# rbenv
eval "$(rbenv init -)"

# Output IP and Disk information
source "${HOME}/bin/info.sh"

# Set command mode to vi style
set -o vi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

# User configuration
plugins=(git mvn history textmate rvm python ruby postgres svn virtualenv yum)

export EDITOR='vim'
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/opt/chefdk/bin/:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
export SVN_EDITOR=vim

alias zshconfig="mate ~/.zshrc"
alias ll="ls -la"
alias st="git status"
alias bil="bundle install"
alias brake="bundle exec rake"
alias bexec="bundle exec"
alias vup="vagrant up"
alias dev="cd ~/Development"
alias woc="cd ~/Development/women-contributing"


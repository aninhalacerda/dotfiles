# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="pure"

CASE_SENSITIVE="false"
DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

# User configuration
plugins=(git mvn history textmate rvm python ruby postgres svn virtualenv yum)

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home
export EDITOR='vim'
export PATH=/usr/local/bin:/usr/local/sbin/:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=/opt/chefdk/bin:$PATH
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
export SVN_EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export OCI_LIB_DIR=/opt/oracle/instantclient
export OCI_INC_DIR=/opt/oracle/instantclient/sdk/include

export DYLD_FALLBACK_LIBRARY_PATH=/Applications/Postgres.app/Contents/MacOS/lib:$DYLD_LIBRARY_PATH

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

alias zshconfig="vim ~/.zshrc"

alias psql_start="postgres -D /usr/local/var/postgres/"

alias ll="ls -la"
alias use_bash="chsh -s /usr/local/bin/bash"

alias readme="cat README.md"

alias g="git"
alias st="git status"
alias view-on-gitub=$'open `git config --get remote.origin.url | awk \'/git@github.com:/ { sub(/git@github.com:/, "https://github.com/") }; { print }\'`'
alias p_and_push="git pull -r && git push origin master"

#Ruby development
alias bil="bundle install"
alias brake="bundle exec rake"
alias bexec="bundle exec"

alias dev="cd ~/Development"
alias woc="cd ~/Development/women-contributing"
alias met="cd ~/Work/met/portal"

#Node development
alias node-check="echo \"==== Dependencies check ====\" && depcheck && echo \"==== Dependencies versions check ====\" && ncu"

#Java development with Gradle
alias gt="./gradlew clean test"
alias gb="./gradlew clean build"

#Infrastructure
alias vup="vagrant up"
alias vssh="vagrant ssh"
alias c="docker-compose"
alias k="kubectl"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/google-cloud-sdk/path.zsh.inc ]; then
  source '/usr/local/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/google-cloud-sdk/completion.zsh.inc ]; then
  source '/usr/local/google-cloud-sdk/completion.zsh.inc'
fi

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

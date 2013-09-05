export JAVA_HOME=/opt/jdk1.7.0_09
export JAVA=$JAVA_HOME/bin/java

export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:~/shell_scripts
#export JETTY_HOME=/Applications/jetty/

#alias ls="ls -F"
alias d="ls -lG"
alias f="git diff"

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias go='git checkout '
alias gcp='git cherry-pick'
alias gk='gitk --all&'
alias gx='gitx --all'
alias revert='git checkout -- '
alias gr='./gradlew' 

source ~/.bash_ps1

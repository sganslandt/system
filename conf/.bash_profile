echo "Loading ~/.bash_profile"

export PATH=$PATH:"/opt/local/Applications/play/"
export PATH=$PATH:"~/Applications/play/"

#export PATH=$PATH:"/Applications/typesafe-stack/bin"
#export AKKA_HOME=/Applications/typesafe-stack/

#export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Commands/"
export PATH=$PATH:$JAVA_HOME/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:~/bin
export JETTY_HOME=/Applications/jetty/

alias ls="ls -F"
alias d="ls -lG"
alias f="git diff"

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias gr='./gradlew' 

source .bash_ps1



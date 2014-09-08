[[ ${-#*i} != ${-} ]] || return

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi  

export PATH=$PATH:~/bin
source ~/.mac_paths
#source ~/.linux_paths

source ~/.bash_ps1
source ~/.aliases

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#function g() {
#      local cmd=${1-s}
#      shift
#      git $cmd "$@"
#}

alias v=vagrant
alias gs="git status | less -R"

function grepl() {
  grep --color=always "$@" | less -R 
}

export CLICOLOR_FORCE=true
alias less="less -R"

function scp {
  command scp -pr "$@"
}
function mkdir {
  command mkdir -p "$@"
}
function ll {
    command ls -Flh "$@"
}
export -f ll
function s {
  ps aux | grep "$@"
}

alias t="ssh -fN" 

shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND ; history -a"

CDPATH=.:..:../..:/Users/sebastian

export IGNOREEOF=1

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home

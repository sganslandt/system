[[ ${-#*i} != ${-} ]] || return


brew_prefix=/usr/local
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi  

export PATH=$PATH:~/bin

source ~/.bash_ps1
source ~/.aliases

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

function grepl() {
  grep --color=always "$@" | less -R 
}

export CLICOLOR_FORCE=true

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

function g() {
    local cmd=${1-s}
      shift
      git $cmd "$@"
}

shopt -s histappend
PROMPT_COMMAND="$PROMPT_COMMAND ; history -a"

shopt -s extglob
shopt -s globstar

export IGNOREEOF=1

source ~/.java_config


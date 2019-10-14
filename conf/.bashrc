[[ ${-#*i} != ${-} ]] || return

export PATH=$PATH:~/bin

PROMPT_COMMAND="$PROMPT_COMMAND ; history -a"
source ~/.bash_ps1
source ~/.aliases

export CLICOLOR_FORCE=true
export IGNOREEOF=1

shopt -s histappend
shopt -s extglob
if [ "`uname`" = "Linux" ] ; then
   shopt -s globstar
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

brew_prefix=/usr/local
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi

complete -C '/usr/local/bin/aws_completer' aws

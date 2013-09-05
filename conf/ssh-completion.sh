__get_hosts() {
    if [[ -f ~/.ssh/known_hosts ]] ; then
        cut -d " " -f1 ~/.ssh/known_hosts | cut -d "," -f1
    fi
}

_ssh() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    hosts="$(__get_hosts)";

    if [[ ! ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${hosts}" -- ${cur}) )
        return 0
    fi
}

complete -F _ssh ssh scp sftp


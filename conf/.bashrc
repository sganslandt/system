[[ ${-#*i} != ${-} ]] || return

echo "Loading ~/.bashrc"

export PATH=$PATH:~/bin
source ~/.linux_paths

source ~/.bash_ps1
source ~/.aliases

function g() {
    local cmd=${1-s}
      shift
      git $cmd "$@"
}



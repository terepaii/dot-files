# Constants

alias 'ls'='ls -lah'
alias 'clr'='clear'
alias 'vi'='vim'
alias 'dlist'='docker ps -a'
alias 'py'='python2.7'
alias 'setdns'='networksetup -setdnsservers Wi-Fi 10.49.0.21 10.49.0.37'
alias 'cleardns'='networksetup -setdnsservers Wi-Fi'

function dexec() {
    docker exec -it $1 /bin/bash
}
export -f dexec

function dstop(){
    docker stop $1
}
export -f dstop

function dstart(){
    docker start $1
}

export -f dstart

clr

# Setting PATH for Python 3.6
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

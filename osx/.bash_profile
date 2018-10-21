# Constants
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

alias 'ls'='ls -lah'
alias 'clr'='clear'
alias 'vi'='vim'
alias 'drm'='docker rm'
alias 'dstp'='docker stop'
alias 'dlist'='docker ps -a'
alias 'py'='python2.7'

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export AWS_ACCESS_KEY="AKIAIKI7DOM65GQ6VXTA"
export AWS_SECRET_KEY="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"



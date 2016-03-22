parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u \[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

source ~/.git-completion.bash

alias l='ls'
alias la='ls -a'

alias g='git'


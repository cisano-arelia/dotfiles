# apt install exa
if [ -x /usr/bin/exa ]; then
    alias l='exa'
    alias la='exa -a'
    alias ll='exa -lah'
    alias ls='exa --color=auto'
fi

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


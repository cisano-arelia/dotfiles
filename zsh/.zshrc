[[ $- != *i* ]] && return

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13

plugins=(common-aliases aliases alias-finder git)

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

if [ -x /usr/bin/fastfetch ]; then
   [ ! -z $TMUX ] && fastfetch
fi

# tmux installed? if not bail
if ! command -v tmux>/dev/null 2>&1; then
   return
fi

# are in console? or already in tmux? bail
if [[ $TERM =~ screen ]] || [[ -n $TMUX ]]; then
   return
fi

if tmux has-session -t peter 2>/dev/null; then
   exec tmux -2 attach-session -t peter
else
   exec tmux -2 new -s peter
fi

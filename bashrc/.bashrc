# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

eval "$(ssh-agent -s)"

# pip install powerline-status
if [ -x $HOME/.local/bin/powerline-daemon ]; then
  $HOME/.local/bin/powerline-daemon -q
  . /home/cisa/.local/lib/python3.9/site-packages/powerline/bindings/bash/powerline.sh
fi

# apt install tmux
if command -v tmux>/dev/null; then
  [[ ! $TERM =~ screen ]] && [ -z $TMUX ] && exec tmux -2 attach-session -t peter
fi

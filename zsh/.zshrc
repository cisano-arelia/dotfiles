[[ $- != *i* ]] && return

export SESSION=main
if [ -z "$TMUX" ]
then
  tmux has-session -t $SESSION 2>/dev/null

  if [ $? != 0 ]
  then
    tmux new -d -s $SESSION
  fi

  exec tmux attach-session -t $SESSION
else
  zstyle ':omz:update' mode auto      # update automatically without asking
  zstyle ':omz:update' frequency 13

  plugins=(common-aliases aliases alias-finder git)

  source $ZSH/oh-my-zsh.sh
fi

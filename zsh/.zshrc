[[ $- != *i* ]] && return

export SESSION=main
if [ -z "$TMUX" ]
then
  tmux has-session -t $SESSION 2>/dev/null

  if [ $? != 0 ]
  then
    tmuxp load -d $SESSION
  fi

  exec tmux attach-session -t $SESSION
else
  zstyle ':omz:update' mode auto      # update automatically without asking
  zstyle ':omz:update' frequency 13

  plugins=(common-aliases zsh-aliases-exa aliases alias-finder autoenv git)

  source $ZSH/oh-my-zsh.sh
fi

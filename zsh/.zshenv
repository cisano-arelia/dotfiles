source /etc/zsh/zshenv

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="clean"

COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"
  
HIST_STAMPS="yyyy-mm-dd"

export EDITOR="nano"

export DISABLE_AUTO_TITLE="true"

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

[[ $- != *i* ]] && return

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 13

plugins=(common-aliases aliases alias-finder git zsh-aliases-exa)

source $ZSH/oh-my-zsh.sh

if [ -x /usr/bin/fastfetch ]; then
   fastfetch
fi

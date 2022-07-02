# dotfiles
Stow repository

## Installation

```
apt install stow tmux tmuxp zsh python3-pip
sudo pip install autoenv
cd ~/dotfiles/
stow bashrc
```

## Oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Tmux preloading service systemd

For: /etc/systemd/system/tmuxp.service
```
[Unit]
Description=tmuxp preload

[Service]
Type=forking
User=cisa
WorkingDirectory=/home/cisa
Environment="DISABLE_AUTO_TITLE=true"
ExecStart=/usr/bin/tmuxp load -d main
ExecStop=/usr/bin/tmux kill-server

[Install]
WantedBy=multi-user.target
```

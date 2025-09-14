# Tools

### keyd

- https://github.com/rvaiya/keyd
- Config at `./keyd.conf`

### fzf

- https://github.com/junegunn/fzf
- https://github.com/junegunn/fzf/issues/1866

### Zsh + Oh-my-Zsh

- https://ohmyz.sh/
- Theme `robbyrussel`

```sh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```

### Aliases

```sh
alias c='clear'
alias ll='ls -alF'

# Python
alias debugp='python -m debugpy --listen 5678 --wait-for-client'

# Git
alias glg='glol -10'

# Docker
alias dkb='docker exec -it <container_name> env TERM=xterm-256color script -q -c "cd $HOME && zsh"'
```

### ripgrep

- https://github.com/BurntSushi/ripgrep


### NVM

- https://github.com/nvm-sh/nvm


### Alacritty

- https://alacritty.org/#Installation


### TMUX

- https://github.com/tmux/tmux/wiki


### Fira Code

- https://github.com/tonsky/FiraCode


### uv

- https://docs.astral.sh/uv/


### Gestures

- https://github.com/HieuTNg/touchpad-gesture-customization

```sh
➜  ~ gnome-extensions list
touchpad-gesture-customization@coooolapps.com
ding@rastersoft.com
tiling-assistant@ubuntu.com
ubuntu-appindicators@ubuntu.com
ubuntu-dock@ubuntu.com
```
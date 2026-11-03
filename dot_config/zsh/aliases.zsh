# Interactive aliases. Rule: never shadow a POSIX command's behaviour (agents may inherit these).

# git (same names as the Oh My Zsh git plugin you were used to)
alias ga='git add'
alias gb='git branch'
alias gc='git commit --verbose'
alias gcam='git commit --all --message'
alias gco='git checkout'
alias gswc='git switch --create'
alias grs='git restore'
alias gl='git pull'
alias gp='git push'
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias glg='glol -10'
alias gst='git status'
alias gd='git diff'

# listing (ls itself stays untouched)
if (( $+commands[eza] )); then
  alias ll='eza -l --git --group-directories-first'
  alias la='eza -la --git --group-directories-first'
else
  alias ll='ls -alF'
fi

alias c='clear'
alias debugp='python -m debugpy --listen 5678 --wait-for-client'

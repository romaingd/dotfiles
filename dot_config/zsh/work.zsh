# Work profile only (excluded on personal machines via .chezmoiignore).
# Ported from the old .zshrc; legacy tools (nvm, virtualenvwrapper, tfenv) are kept but guarded.

alias s='cd ~/spinergie'
alias glu='caenv; gl && uv sync --group dev'
alias vpnco='aws-vpn-client connect --profile-name spin-main'
alias vpndis='aws-vpn-client disconnect --profile-name spin-main'
alias vpnfix='sudo sysctl -w net.ipv4.ip_forward=1'    # VPN + Docker + Internet issue (Notion: "Test laptop setup with Ubuntu 24.04")

alias actpoet='source $(poetry env info --path)/bin/activate'
alias actvenv='source .venv/bin/activate'
alias ds='cd ~/spinergie/spindata && actvenv'
alias sdo='cd ~/spinergie/spindevops && actvenv'
alias sco='cd ~/spinergie/spinconso && actvenv'
alias lsc='cd ~/spinergie/spincrawling && actvenv'
alias app='cd ~/spinergie/spinapp/'
alias sdj='cd ~/spinergie/spinapp/spindjango && actvenv'
alias dkb='docker exec -it spinapp env TERM=xterm-256color script -q -c "cd /app/spinapp && zsh"'
alias load_dump="$HOME/spinergie/spindevops/.venv/bin/python $HOME/spinergie/spindevops/spindevops/scripts/load_dump.py"
# qc <code>: launch qc for the analyst (code = file name without .py)
alias qc='$(cd ~/spinergie/spindata && poetry env use 3.11 --quiet && poetry env info --path)/bin/python ~/spinergie/spindata/spindata/Cross_app/notifications/launch_notif.py pipelay -q -d -c'

export AWS_PROFILE=spin-main
[[ -r $HOME/spinergie/infra/dev_tools/aws_helpers.sh ]]   && source "$HOME/spinergie/infra/dev_tools/aws_helpers.sh"
[[ -r $HOME/spinergie/infra/dev_tools/vscode_deactivate ]] && source "$HOME/spinergie/infra/dev_tools/vscode_deactivate"
path=("$HOME/tools/bin" $path)                           # codebase-memory-mcp

# CodeArtifact credentials: loaded on demand instead of on every shell start, so they are not
# inherited by every process (agents included). Run `caenv` before poetry/uv commands that need them.
caenv() {
  local tok; tok=$(<"$HOME/.aws/codeartifact") || return
  export POETRY_HTTP_BASIC_CODEARTIFACT_USERNAME=aws POETRY_HTTP_BASIC_CODEARTIFACT_PASSWORD=$tok
  export UV_INDEX_CODEARTIFACT_USERNAME=aws UV_INDEX_CODEARTIFACT_PASSWORD=$tok
}

# ── legacy (remove when work moves to mise/uv) ───────────────────────────
export NVM_DIR="$HOME/.nvm"
[[ -s $NVM_DIR/nvm.sh ]] && source "$NVM_DIR/nvm.sh"          # slowest line of the old startup

if [[ -r $HOME/.virtualenvs/venv/bin/virtualenvwrapper.sh ]]; then
  export WORKON_HOME=$HOME/.virtualenvs
  export VIRTUALENVWRAPPER_PYTHON=$HOME/.virtualenvs/venv/bin/python
  export VIRTUALENVWRAPPER_VIRTUALENV=$HOME/.virtualenvs/venv/bin/virtualenv
  source "$HOME/.virtualenvs/venv/bin/virtualenvwrapper.sh"
fi

if [[ -x $HOME/.local/bin/.tfenv/versions/1.12.2/terraform ]]; then
  autoload -U +X bashcompinit && bashcompinit
  complete -o nospace -C "$HOME/.local/bin/.tfenv/versions/1.12.2/terraform" terraform
fi

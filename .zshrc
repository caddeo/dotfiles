if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
	1password
  aws
	command-not-found
  colorize
	dnf
  docker
  docker-compose
  dotenv
  gh
	git
	github
	gitignore
  git-prompt
  golang
  helm
  kubectl
  kubectx
  minikube
  node
  npm
  nvm
  postgres
  ssh
	sudo
  terraform
	rust
	z
	zsh-autosuggestions
	zsh-syntax-highlighting
	fast-syntax-highlighting
	zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

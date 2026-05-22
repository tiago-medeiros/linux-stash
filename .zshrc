if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Remove background color
LS_COLORS=$LS_COLORS:'tw=00;34:ow=01;34:'; export LS_COLORS

# Import oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Import powerlevel theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Pluginsi
plugins=(
	git
	zsh-autosuggestions
	zsh-history-substring-search
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin

# ----- Alias -----

## Kubectl
alias k="kubectl"
alias kg="kubectl get"
alias ke="kubectl edit"
alias kd="kubectl describe"

## AWS
alias aws="aws --endpoint-url=http://localhost.localstack.cloud:4566"


[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="$HOME/.local/bin:$PATH"

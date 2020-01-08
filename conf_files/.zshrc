
# Souce the "Welcome" script
#ruby .welcome.rb

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/$USER/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"
export SHELL_SESSION_HISTORY=0
export PATH="$PATH:`pwd`/flutter/bin"
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/Users/$USER/.composer/vendor/bin:$PATH"

ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"
HIST_STAMPS="dd/mm/yyyy"

plugins=(
  git
  zsh-autosuggestions
  docker
  rails
  git-flow
  zsh-apple-touchbar
  kubectl
  yarn
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias repo="cd /Users/$USER/Documents/repo/"
alias upgrade="sh /Users/giandigia/Documents/utilities/maintenance.sh"
alias stop_all="sh /Users/giandigia/Documents/utilities/stop_all.sh"
alias ls="exa"
alias cat="bat"
alias kraken="open /Applications/GitKraken.app"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# used to store the sales_management_pix project secret key
SMP_RC=.smp-key
if [ -f "$SMP_RC" ]; then
  source $SMP_RC
else
    echo "$SMP_RC does not exist"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

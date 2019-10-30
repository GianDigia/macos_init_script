export ZSH="/Users/$USER/.oh-my-zsh"
export PATH="/usr/local/sbin:$PATH"
export SHELL_SESSION_HISTORY=0
export PATH="$PATH:`pwd`/flutter/bin"
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH="/usr/local/opt/openssl/bin:$PATH"

ZSH_THEME="powerlevel9k/powerlevel9k"
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
  brew
  kubectl
)

source $ZSH/oh-my-zsh.sh

# POWERLEVEL9K THEME CONFIGURATION
source .term_themes/theme_1

# Aliases
alias repo="cd /Users/$USER/Documents/repo/"
alias upgrade="sh /Users/giandigia/Documents/utilities/maintenance.sh"
alias stop_all="sh /Users/giandigia/Documents/utilities/stop_all.sh"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# used to store the sales_management_pix project secret key
SMP_RC=.smp-key
if [ -f "$SMP_RC" ]; then
  source $SMP_RC
else
    echo "$SMP_RC does not exist"
fi

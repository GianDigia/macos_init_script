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
OS_ICON=$(echo "APPLE_ICON")
POWERLEVEL9K_PROMPT_ADD_NEWLINE=false

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_folders
POWERLEVEL9K_SHORTEN_DELIMITER=""

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

POWERLEVEL9K_TIME_FOREGROUND="249"
POWERLEVEL9K_TIME_FORMAT="\UF43A %D{%I:%M}"

POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'

POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''

HIST_STAMPS="dd/mm/yyyy"


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

# --- Zsh history
HIST_STAMPS="yyyy-mm-dd"
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

# --- Colored man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'

# --- Key bidnings (Home/End/Del)
bindkey "^[[H"  beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[3~" delete-char

# --- Starship prompt
eval "$(starship init zsh)"

# --- Alias
alias history="history 1"
alias cls="clear"
alias man="man -P less"

# --- Zsh plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# --- Start commands
uptime | cut -d " " -f 3-

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

<<<<<<< cd8134a04e584bafea08b51d021e239118352a26
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="terminalparty"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git github python zsh-syntax-highlighting)
=======
# Theme
ZSH_THEME="terminalparty-modified"

# Plugins
plugins=(git github python brew pip sudo)
>>>>>>> Complete upgrade to v2.0.0


export PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:$HOME/bin"
source $ZSH/oh-my-zsh.sh

# Aliases
alias vi='vim'

# Tmux
if [ "$TMUX" != "" ]; then tmux; fi
<<<<<<< cd8134a04e584bafea08b51d021e239118352a26
=======

# Syntax highlighting
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
>>>>>>> Complete upgrade to v2.0.0

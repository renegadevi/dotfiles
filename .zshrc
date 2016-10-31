# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="terminalparty-modified"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras pip github brew sudo python zsh-syntax-highlighting zsh-autosuggesions zsh-completions zsh-notify)

export PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:$HOME/bin"
source $ZSH/oh-my-zsh.sh

# Tmux
if [ "$TMUX" != "" ]; then tmux; fi

# Use newer version of VIM in OSX. This prevents reverting vim path to older
# vim versions when updating OSX.
if [ "$(uname)" == "Darwin" ]; then
    alias vi='/usr/local/bin/vim'
    alias vim='/usr/local/bin/vim'
fi

# Source some Zsh plugins
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggesions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/enhancd/init.sh

# Prevent from some path issues when using multiple version of some software
# in OSX.
if [ "$(uname)" == "Darwin" ]; then
    export PATH='/usr/local/bin:$PATH'
fi

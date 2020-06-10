export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"
plugins=(git git-extras pip github brew sudo python zsh-syntax-highlighting zsh-autosuggesions zsh-completions zsh-notify docker)
export PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:$HOME/bin"
source $ZSH/oh-my-zsh.sh

# Source some zsh plugins
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-completions/zsh-completions.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/enhancd/init.sh


# Syntax color to man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

# Youtube
alias youtube-dl-mp3="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias youtube-to-mp3="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias youtube-dl-mp4="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"
alias youtube-to-mp4="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"

# Vuepress
alias vuepress-build="clear;yarn docs:build"
alias vuepress-dev="clear;yarn docs:build && yarn docs:dev"

# Docker
alias "compose"="docker-compose down;clear;docker-compose config;docker-compose build;docker-compose up"
alias "build"="docker-compose down;clear;docker-compose config;docker-compose build"

# Show uptime
uptime | cut -d " " -f 3-

#export ZSH="/home/renegadevi/.oh-my-zsh"
export ZSH="$HOME/renegadevi/.oh-my-zsh"
ZSH_THEME="ys"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=30
HIST_STAMPS="yyyy-mm-dd"

# Plugins
#plugins=(brew colored-man-pages command-not-found cp pip pyenv ripgrep rust yarn)

## Extra ZSH plugins
plugins=(brew colored-man-pages command-not-found cp pip pyenv ripgrep rust yarn fast-syntax-highlighting zsh-autosuggestions zsh-completions)
# git clone https://github.com/zdharma/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

source $ZSH/oh-my-zsh.sh


# With Extra ZSH plugins
# git clone https://github.com/zdharma/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions


# Aliases

## youtube-dl
alias youtube-dl-mp3="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0"
alias youtube-dl-mp4="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"
alias youtube-dl-mp3-playlist="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '%(playlist_index)02d - %(title)s.%(ext)s'"

## ffmpeg
alias video-loop="ffplay -loop 0"
alias video-borderless="ffplay -noborder -left 0 -top 0"

## podman
alias podman-delete-containers="podman rm -fa"
alias podman-delete-images="podman rmi -fa"
alias podman-purge="podman system prune --all --force && podman rmi --all"
alias podman-reset="podman system reset"
alias podman-stop="podman stop -a"
alias podman-stop-latest="podman stop -l"

## vuepress
alias vuepress-build="yarn docs:build"
alias vuepress-dev="yarn docs:build && yarn docs:dev"

## rust
PATH="$HOME/.cargo/bin:$PATH"
alias rust-run="clear;time rustc main.rs;./main"


# show uptime
uptime | cut -d " " -f 3-





#!/bin/sh

echo "
Note to ny self:
- Install Zsh and Oh-My-Zsh first!
"

# Get user input
echo -e "Github username: \c"; read username
echo -e "Symlink dotfiles to home folder? (y/n) \c"; read symlink
echo -e "Install zsh-syntax-highlighting? (y/n) \c"; read syntax

# Backup pre-existing ~/dotfiles
if [ -d ~/dotfiles ]; then
    DATE=`date +'%Y-%m-%d'`
    echo `mv ~/dotfiles ~/dotfiles_$DATE`
    echo ".. Old dotfiles located at ~/dotfiles_$DATE"
fi

# Receive dotfiles from Github
echo ".. Cloning dotfiles to ~/dotfiles"
echo `git clone --recursive https://github.com/$username/dotfiles.git ~/dotfiles -q`

# Create symlinks
if [ $symlink == y ]; then
    echo ".. Creating symlinks"
    for f in ~/dotfiles/.* ; do
        NAME=`basename $f`
        if ! [ $NAME == '..' ] && ! [ $NAME == '.' ]; then
            echo `ln -sf $f ~/$NAME`
            echo "$f ->  ~/$NAME"
        fi
    done
fi

# Install zsh-syntax-highlighting?
if [ $syntax == y ]; then
    echo `git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting`
fi

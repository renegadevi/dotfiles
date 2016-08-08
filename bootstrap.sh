#!/bin/sh

# bootstrap.sh
#
#  1. Enter which Github user's dotfiles to grab
#  2. Backup (if) any pre-exiting dotfiles
#  3. Clone dotfiles from user, ask for recursive.
#  4. Symlink the new dotfiles to home folder
#

# Get user input
echo -e "Github username: \c"; read username
echo -e "Recursive clone? (y/n) \c"; read gitclone
echo -e "Symlink dotfiles to home folder? (y/n) \c"; read symlink

# Backup pre-existing ~/dotfiles
if [ -d ~/dotfiles ]; then
    DATE=`date +'%Y-%m-%d'`
    echo `mv ~/dotfiles ~/dotfiles_$DATE`
    echo ".. Old dotfiles located at ~/dotfiles_$DATE"
fi

# Receive dotfiles from Github
echo ".. Cloning dotfiles to ~/dotfiles"
if [ $gitclone == y ]; then
    echo `git clone --recursive https://github.com/$username/dotfiles.git ~/dotfiles -q`
else
    echo `git clone https://github.com/$username/dotfiles.git ~/dotfiles -q`
fi

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

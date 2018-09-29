#!/bin/sh

# bootstrap.sh
#
#  1. Pick which git source to use
#  2. Enter which Github user's dotfiles to grab
#  3. Backup (if) any pre-exiting dotfiles
#  4. Clone dotfiles from user, ask for recursive.
#  5. Symlink the new dotfiles to home folder
#

# Get user input
read -p "Gitlab(a) or Github(b)? (a/b): " gitsource
read -p "Repo user: " username
read -p "Recursive clone? (y/n) " gitclone
read -p "Symlink dotfiles to home folder? (y/n) " symlink

## Define git source
if [ $gitsource = a ]; then
    gitsource='gitlab'
elif [ $gitsource = b ]; then
    gitsource='github'
fi

# Backup pre-existing ~/dotfiles
if [ -d ~/dotfiles ]; then
    DATE=`date +'%Y-%m-%d'`
    echo `mv ~/dotfiles ~/dotfiles_$DATE`
    echo ".. Old dotfiles located at ~/dotfiles_$DATE"
fi

# Receive dotfiles from Github
echo ".. Cloning dotfiles to ~/dotfiles"
if [ $gitclone = y ]; then
    echo `git clone --recursive https://$gitsource.com/$username/dotfiles.git ~/dotfiles -q`
else
    echo `git clone https://$gitsource.com/$username/dotfiles.git ~/dotfiles -q`
fi

# Create symlinks
if [ $symlink = y ]; then
    echo ".. Creating symlinks"
    for f in ~/dotfiles/.* ; do
        NAME=`basename $f`
        if ! [ $NAME = '..' ] && ! [ $NAME = '.' ]; then
            echo `ln -sf $f ~/$NAME`
            echo "$f ->  ~/$NAME"
        fi
    done
fi

# End message
echo "... done!"

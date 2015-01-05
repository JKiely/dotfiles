#!/bin/bash


dir=~/dotfiles
olddir=~/dotfiles_old             
files="bash_profile bashrc gitconfig gitignore_global emacs.d"

mkdir $olddir

cd $dir

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Symlinking $file to home ~."
    ln -s $dir/$file ~/.$file
    echo "Done"
done


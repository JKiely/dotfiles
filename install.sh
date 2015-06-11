#!/bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old             
files="bash_profile bash_aliases gitconfig gitignore_global emacs.d"

mkdir $olddir

for file in $files; do
    mv ~/.$file $olddir/$file
    ln -s $dir/$file ~/.$file
done


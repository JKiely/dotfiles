#This does not work, I'm just playing around with the idea.

dir=~/dotfiles
olddir=~/dotfiles_old

mkdir $olddir

for file in $dir/*
#Add a grep or similar to ignore rm and cruft
do
    mv ~/.$file $olddir
    ln -s ~/$dir/$file ~/.$file
done
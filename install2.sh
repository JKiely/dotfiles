dir=~/dotfiles
olddir=~/dotfiles_old

mkdir $olddir

for file in $dir/*
do
    mv ~/.$file $olddir
    ln -s ~/$dir/$file ~/.$file
done
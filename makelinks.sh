!#/bin/bash

sourceDir=~/Dropbox/dotfiles
files=".bashrc .vimrc .vim .Xdefaults .i3"

echo -n "CD to $sourceDir"
cd $sourceDir

for file in $files; do
    echo "Creating symlink to $file"
    ln -s $sourceDir/$file ~/$file
done

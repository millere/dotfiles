#!/bin/bash

dir=`pwd`
files="astylerc cmus vimrc vim gitconfig xinitrc Xresources"

echo $dir

for file in $files; do
	echo "Installing $file"
	ln -s $dir/$file ~/.$file
done

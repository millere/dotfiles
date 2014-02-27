#!/bin/bash

dir=`pwd`
files="vimrc vim gitconfig"

echo $dir

for file in $files; do
	echo "Installing $file"
	ln -s $dir/$file ~/.$file
done
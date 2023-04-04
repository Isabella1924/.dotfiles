#!/bin/bash
or=$(uname)

#checks if or is not equal to linux
if [[ $or != "Linux" ]]; then
	#Prints out error in linuxsetup.log 
	echo "ERROR: The operating system does not equal linux" > linuxsetup.log
	exit
else 
	echo "The operating system is equals to linux" > linuxsetup.log
fi

#Creates TRASH directory
mkdir ~/.TRASH 

if [[ -e "~/.vimrc" ]]; then
	# check if it exsists
 mv ~/.vimrc ~/.bup_vimrc #rename .vimrc to .bup_vimrc
	echo "The .vimrc file was renamed to .bup_vimrc" > linuxsetup.log  #the output from echo saying that the file was renamed goes to a new file
fi 

#redirect contents to .vimrc
cat etc/vimrc > ~/.vimrc
echo "source ∼/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #add the statement at the end of the bashrc_custom

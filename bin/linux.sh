#!/bin/bash
or=$(uname)

#checks if or is not equal to linux
if [[ $or != "Linux" ]]; then
	#Prints out error in linuxsetup.log 
	echo "ERROR: The operating system does not equal linux" >> linuxsetup.log
	exit
else 
	echo "The operating system is equals to linux" >> linuxsetup.log
fi

#Creates TRASH directory
mkdir /acct/ita/.TRASH 

if [[ -e "~/.vimrc" ]]; then
	# check if it exsists
 mv /acct/ita/.vimrc /acct/ita/.bup_vimrc #rename .vimrc to .bup_vimrc
	echo "The .vimrc file was renamed to .bup_vimrc" >> linuxsetup.log  #the output from echo saying that the file was renamed goes to a new file
fi 

#redirect contents to .vimrc
cat etc/vimrc > /acct/ita/.vimrc
echo "source /acct/ita/.dotfiles/etc/bashrc_custom" >> /acct/ita/.bashrc #add the statement at the end of the bashrc_custom

#!/bin/bash
 
rm -r ~/.vimrc #remove .vimrc from home dir
sed -i "/source ∼\/\.dotfiles\/bashrc_custom/g" ~/.bashrc #replace the pattern with nothing in the .bashrc file
rm -r ~/.TRASH #remove trash from home dir

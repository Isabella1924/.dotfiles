# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim. Here are some useful vim configurations, it includes my favorite color scheme, syntax highlighting and line numbering and more.
## .bashrc
This is my custom .bashrc configuration for Bash.
## bashrc custom
This contains aliases that could be useful to someone
On top of that also have funtions for example the tarball function and also one for remoting in like ssh
## linux.sh
Here it checks if the operating ysstem is linux or not. It echoes an error message in the linusetup.log if it is not and exits the program and if it is it echoes "the operating system is linux" to the linxsetup.log file. On top of that a .trash directory is created in your home directory.On top of that, if the .vimrc exists in your home directory it will chnage the name to now .bup vimrc and echo to the linuxsetup.log that the changes have been made. It also redirects etc/vimrc contents to the .vimrc file.The script will add the a statement at the end of the bashrc file that is located in your home directory to run the helpul alliases.
## cleanup.sh
This clean up script will reverse anything that was done with linux.sh
## Make file
The Make file will run two targets linux and clean. The clean target will run the linux.sh script and the clean target will run the cleanup.sh script

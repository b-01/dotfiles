alias c="clear"								# clear screen
alias pcc="sudo pkgcacheclean 1" 					# remove all but 1 rev package
alias pacs="yay -Ss"		 					# pacman search
alias pacu="yay"	 						# pacman update
alias paclist="sudo yay -Sy && sudo yay -Qu"				# show all packages that can be upgraded
alias view="/usr/bin/rview" 						# rview to view
alias wanip="dig @resolver1.opendns.com ANY myip.opendns.com +short"	# show WAN IP address
alias rm="/usr/bin/rm -I"						# ask before multi delete
alias cp="/usr/bin/cp -i"						# ask before overwrite
alias mv="/usr/bin/mv -i"						# ask before overwrite
alias gits="git status"							# git status
alias gitc="git commit"							# git commit
alias gitp="git push"							# git push
alias gitl="git pull"							# git pull
alias update-vscode="/usr/bin/python3 $HOME/.bin/update_vscode.py $HOME/Coding" # update vscode
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' # dotfile management

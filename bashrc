#PATH

#HISTORY
HISTSIZE=100
HISTFILESIZE=0
HISTFILE="/home/kouseralamin/.bash_history"

#ALIAS
alias ls="ls --color=auto -alSGgh --group-directories-first"
alias grep="grep --color=auto"

#UPDATE
u () {
	sudo apt update && sudo apt upgrade -y && sudo apt upgrade --fix-broken -y && sudo apt autoremove && sudo apt clean
}

#AUTO_CHANGE_DIRECTORY
shopt -s autocd

if [ "$BASH" ]; then
	export PS1="\[\e]2;[\j]\$?:\w\a\]\[\033[1;34m\]\u@\h\[\033[0m\]:\[\033[1;32m\]\w\[\033[0m\]\n[\[\033[1;31m\]\j\[\033[0m\]]\[\033[1;31m\]\$?\[\033[0m\]\$ "
	export PS2="$> "
fi




#FUNCTIONS
transfer () {
	if [ $# -eq 1 ]
	then
		printf "%s\n" "$(curl --progress-bar "https://transfer.sh/" -F "filedata=@$1")"
	else
		printf "%s\n" "TOO MANY ARGUMENTS"
	fi
}

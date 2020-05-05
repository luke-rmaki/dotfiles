# Path to your oh-my-zsh installation.
export ZSH="/home/luke/.oh-my-zsh"

ZSH_THEME="amuse"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Welcome message
echo "Welcome Luke ==>"


 # Aliases
alias config='vim ~/.zshrc'
alias src='source ~/.zshrc'
alias cls='clear'
alias pj='cd /mnt/c/Users/lukes/Projects'
alias lukes='cd /mnt/c/Users/lukes'
alias code="code"
alias cra="npm init react-app"
alias ls="ls -thor"
alias deploy="git push origin master && netlify watch"
alias vimconfig="vim ~/.vimrc"
alias chrome='/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe --remote-debugging-port=9222'
alias server='ssh luke@167.71.167.0'

#powershell
alias ntop='ps ntop'
alias ps='powershell.exe'
alias open="explorer.exe ."
alias edge="ps start microsoft-edge:"
alias github="ps start 'https://github.com/luke-rmaki'"

# Functions
function chpwd() {
	emulate -L zsh
         ls -a -thor
 }

function reload() {
	echo "Reloading...."
	source ~/.zshrc
}

function commit() {
	if [[ "$1" != "" ]] 
	then		
	  git add .
		git commit -m "$1"
	else
		echo "Please enter a message"
	fi
}

function merge() {
	if [[ "$1" != "" ]] 
	then
		git checkout master
		git merge $1
		git checkout $1
	else
		echo "Please enter a branch to merge"
	fi
}

function push() {
	git checkout master
	git push origin master
	git checkout develop
}

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# X-server
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
sudo /etc/init.d/dbus start &> /dev/null

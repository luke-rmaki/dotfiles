# Load Antigen
source ~/antigen.zsh

# Load Antigen configurations
antigen init ~/.antigenrc

# Alias
alias config='code ~/.zshrc'
alias antconfig='code ~/.antigenrc'
alias ant="code ~/.antigenrc"
alias src='source ~/.zshrc'
alias cls='clear'
alias pj='cd ~/Projects'
alias lukes='cd ~/lukes'
alias code="code"
alias cra="npm init react-app"
alias ls="ls -thor"
alias deploy="git push origin master && netlify watch"
alias vimconfig="vim ~/.vimrc"
alias server='ssh luke@167.71.167.0'
alias espanso="code '/mnt/c/Documents And Settings/lukes/AppData/Roaming/espanso/default.yml'"

# Powershell
alias ntop='ps ntop'
alias ps='powershell.exe'
alias open="explorer.exe ."
alias edge="ps start microsoft-edge:"
alias github="ps start 'https://github.com/luke-rmaki'"

#Functions
function chpwd() {
	emulate -L zsh
	ls -a -thor
}

function reload() {
	echo "Reloading...."
	source ~/.zshrc
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# set DISPLAY variable to the IP automatically assigned to WSL2
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

# Deno
export DENO_INSTALL="/home/luke/.deno/bin/deno"
export PATH="$DENO_INSTALL/bin:$PATH"

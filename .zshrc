# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

#Home machine (Linux)
if [[ "$HOST" == "two" ]]; then
	#change colors
	eval `dircolors -b ~/.dir_colors`
#Work machine (OSX)
elif [[ "$HOST" == "Steven-Webbs-iMac.local" ]]; then
	#nothing
fi

# Customize to your needs...
#bindkey -v

#use colours when doing tab completion
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#turn off group and world permissions by default.
umask 077

#prompt='%m:%c/>'

source ~/.alias-zshrc

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"


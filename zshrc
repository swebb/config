unsetopt MULTIBYTE
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode ruby git-flow-completion)

source $ZSH/oh-my-zsh.sh

#Home machine (Linux)
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	#change colors
	eval `dircolors -b ~/.dir_colors`
#Work machine (OSX)
elif [[ "$HOST" == "Steven-Webbs-iMac.local" ]]; then
	#nothing
fi

# Customize to your needs...
#bindkey -v

#use colours when doing tab completion
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

#turn off group and world permissions by default.
umask 077

#prompt='%m:%c/>'
#prompt='%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
prompt='%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} %{$fg_bold[green]%}%p%{$fg[cyan]%}%c %{$fg_bold[red]%}➜ % %{$reset_color%}'

source ~/.alias-zshrc

# The following lines were added by compinstall

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/steve/.zshrc'

#bindkey '^[j' menu-complete
#bindkey '^[k' menu-complete
#bindkey '^[l' menu-complete
#bindkey '^[h' menu-complete

bindkey -M menuselect '^[j' down-history
bindkey -M menuselect '^[k' up-history
bindkey -M menuselect '^[l' forward-char
bindkey -M menuselect '^[h' backward-char
bindkey -M menuselect '^[0' beginning-of-line
#bindkey -M menuselect '	' accept-line

autoload -Uz compinit
compinit
# End of lines added by compinstall

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
#The following line sets vi mode
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/steve/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#show mode for vi command line
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

#change colors
eval `dircolors -b ~/.dir_colors`

#use colours when doing tab completion
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

#turn off group and world permissions by default.
umask 077

prompt='%m:%c/>'

source ~/.alias-zshrc

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"


#!/bin/bash

# No duplicar el historial
HISTCONTROL=ignoreboth

# Añadir al archivo del historial, no reemplazarlo
shopt -s histappend

# Tamaño del historial
HISTSIZE=1000
HISTFILESIZE=2000

# Autocompletar
source /etc/profile.d/bash_completion.sh

# Ignorar mayúsculas al pulsar TAB
bind "set completion-ignore-case on"

# Starship prompt
eval "$(starship init bash)"

# Colores                                                                             
alias ls='ls --color=auto --group-directories-first'
alias la='ls -A --color=auto --group-directories-first'
alias ll='ls -Ahl --color=auto --group-directories-first'
alias grep='grep --color=auto'

# Atajos
alias c='clear'
alias v='nvim'
alias sv='sudo nvim'

# Git
alias gcm='git commit -am'
alias gp='git push'

# Sistema
alias na='sudo nala'
alias up='sudo nala update && sudo nala upgrade'
alias cl='sudo nala autoremove && flatpak remove --unused'
alias ss='sudo systemctl'

# Otros
alias abook="abook --config "$XDG_CONFIG_HOME"/abook/abookrc --datafile "$XDG_CONFIG_HOME"/abook/addressbook"

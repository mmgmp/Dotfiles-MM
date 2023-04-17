#!/bin/bash

#--- HISTORIAL ---#

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

#--- EXPORTS ---#

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export HISTFILE="${XDG_STATE_HOME}"/bash/history		# Mover .bash_history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg					# Mover .gnupg
export LESSHISTFILE="$XDG_STATE_HOME"/less/history		# Mover .lesshst

#--- PERSONALIZACION ---#

# Permitir ejecutar desde /.local/bin
PATH="$HOME/.local/bin:$PATH"

# Prompt personalizada
PS1='\n\[\033[01;34m\]\w\n\[\033[01;32m\]\u@\h\[\033[00m\]:$ \[$(tput sgr0)\]'

# Carpetas de colores
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Ignorar mayusculas al pulsar TAB
bind "set completion-ignore-case on"

# Autocompletar
source /etc/profile.d/bash_completion.sh

#--- ALIASES ---#

# colores
alias ls='ls --color=auto'
alias ll='ls -lh -a --group-directories-first'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Pedir confirmación
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

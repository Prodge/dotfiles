#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Default editor to vim
export EDITOR=vim

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

HISTSIZE=50000
HISTFILESIZE=50000

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'

# Add shell aliases.
if [ -f ~/.shell_aliases ]; then
    source ~/.shell_aliases
fi

#Enable programmable completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

### Bashhub.com Installation.
if [ -f ~/.bashhub/bashhub.sh ]; then
    source ~/.bashhub/bashhub.sh
fi


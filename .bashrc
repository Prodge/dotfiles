#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Default editor to vim
export EDITOR=vim

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend

HISTSIZE=50000
HISTFILESIZE=50000

# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'

# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

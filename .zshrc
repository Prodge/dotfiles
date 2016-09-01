#
# Prompt
#
PS1='[\u@\h \W]\$ '

#
# Exports
#
export EDITOR=vim

#
# Aliases
#
# Add shell aliases.
if [ -f ~/.shell_aliases ]; then
    source ~/.shell_aliases
fi

#
# Completion
#

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' format '> Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' insert-unambiguous false
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' substitute 1
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/tim/.zshrc'
autoload -Uz compinit
compinit

#
# History
#

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

# Append to history file instead of overwriting
setopt appendhistory

# Share history between shells
setopt SHARE_HISTORY

# Expire duplicate history rows first
setopt HIST_EXPIRE_DUPS_FIRST

# Ignore duplicate rows when searching history
setopt HIST_FIND_NO_DUPS

#
# Misc Options
#

# cd into a file without typing cd
setopt autocd

# Enable extended globbing features
setopt extendedglob

# Report when background jobs they exit immediately
setopt notify

# Disable beeping
unsetopt beep

# Allow comments on the command line
setopt INTERACTIVE_COMMENTS

# Display exit code for processes that don't exit with a 0
setopt PRINT_EXIT_VALUE

# Autocompletion of command line switches for aliases
setopt COMPLETE_ALIASES

#
# Key Bindings
#

# Vim keybindings
bindkey -v

# Bash behaviour of / search
bindkey -M main -r '^[/'']'

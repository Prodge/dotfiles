#
# Prompt
#
PS1='[%n@%m %2c]$ '

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

HISTFILE=~/.zsh_history
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

# If a command takes longer than REPORTTIME to run, show TIMEFMT time summary
REPORTTIME=15
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

#
# Key Bindings
#

# Vim keybindings
bindkey -v

# Reverse search like bash
bindkey "^R" history-incremental-search-backward

# Skip forward/back a word with ctrl-arrow
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word

bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "e[8~" end-of-line
bindkey "e[7~" beginning-of-line

#
# Sources
#

### Bashhub.com Installation.
if [ -f ~/.bashhub/bashhub.zsh ]; then
    source ~/.bashhub/bashhub.zsh
fi

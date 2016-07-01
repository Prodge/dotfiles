# Stortcuts
alias t='date +"Time: %H:%M"'
alias k='kanban'

# Home Shortcuts
alias notes='cd ~/documents/University/Notes/2016/ && ls'
alias takenotes='vi -O ~/documents/University/Notes/2016/todo.txt'
alias cdcode='cd ~/code'

# Work shortcuts
alias cdsiq='cd ~/projects/signiq8/siq8'
alias cdwow='cd ~/projects/siq8-wow'
alias cddeploy='cd ~/projects/signiq8-deploy'

# Batch actions
alias upgrade='sudo apt-get update && sudo apt-get -y upgrade'

alias cls='clear && ls --color=auto'
alias ll='ls -alh --color=auto'
alias cll='clear && ls -alh --color=auto'
alias lld='ll -d -- */'
alias lsd='ls -d -- */'

alias connect_unifi='sudo ip link set w1p1s0 down && netctl start wlp1s0-Unifi'

alias vi='vim'
alias c='clear'

alias rgrep='grep --colour=auto -rn'

alias g='git'

# Command default flags
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# Takes a screenshot every 1.1 seconds (to avoid duplicate names)
alias timelapse='while [ 1 ]; do scrot -q 80 $(date +%s).jpg; sleep 1.1; done'

# thefuck
eval "$(thefuck --alias)"

# Find the current git branch
alias this_branch='git branch | grep "*"'

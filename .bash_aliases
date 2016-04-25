#Stortcuts
alias notes='cd ~/documents/University/Notes/2016/ && ls'
alias takenotes='vi -O ~/documents/University/Notes/2016/todo.txt'
alias cdsiq='cd ~/projects/signiq/siq8/'
alias t='date +"Time: %H:%M"'

#Batch actions
alias upgrade='sudo apt-get update && sudo apt-get -y upgrade'

alias cls='clear && ls --color=auto'
alias ll='clear && ls -alh --color=auto'

alias connect_unifi='sudo ip link set w1p1s0 down && netctl start wlp1s0-Unifi'

alias vi='vim'
alias c='clear'

alias rgrep='grep --colour=auto -rn'

#Command default flags
alias grep='grep --color=auto'
alias ls='ls --color=auto'

#Takes a screenshot every 1.1 seconds (to avoid duplicate names)
alias timelapse='while [ 1 ]; do scrot -q 80 $(date +%s).jpg; sleep 1.1; done'

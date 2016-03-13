#Stortcuts
alias notes='cd ~/documents/University/Notes/2016/ && ls'
alias takenotes='vi -O ~/documents/University/Notes/2016/todo.txt'
alias cdsiq='cd ~/projects/signiq/siq8/'

#Batch actions
alias upgrade='sudo apt-get update && sudo apt-get -y upgrade'

alias cls='clear && ls --color=auto'
alias ll='clear && ls -al --color=auto'


alias vi='vim'
alias c='clear'

alias rgrep='grep --colour=auto -r'

#Command default flags
alias grep='grep --color=auto'
alias ls='ls --color=auto'

#Takes a screenshot every 1.1 seconds (to avoid duplicate names)
alias timelapse='while [ 1 ]; do scrot -q 80 $(date +%s).jpg; sleep 1.1; done'

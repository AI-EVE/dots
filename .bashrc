#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

wal -i -s `hyprctl hyprpaper listactive | grep -F DP-5 | cut -d " " -f 3`
clear
fastfetch
alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
export PIPEWIRE_MEDIA_SESSION=wireplumber
PS1='\[\e[38;5;60m\][\[\e[38;5;142m\]\u\[\e[38;5;56m\]@\[\e[38;5;108m\]\h \[\e[38;5;54m\]\w\[\e[38;5;60m\]]\[\e[38;5;142m\]$ \[\e[0m\]'
alias brave='nohup brave > /dev/null &'
alias discord='nohup vesktop > /dev/null &'
alias zen='nohup zen-browser > /dev/null &'
alias hyprpaper='nohup hyprpaper > /dev/null &'
alias heroic='nohup heroic > /dev/null &'


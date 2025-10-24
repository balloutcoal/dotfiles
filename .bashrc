#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=nvim
export VISUAL=nvim
export IMAGE_VIEWER=nomacs
export BROWSER=google-chrome-stable

# Open kitty on fastfetch
fastfetch

# Aliases
alias icat="kitten icat" #display images in terminal
alias vim="nvim" #vim shortener
alias screenshot="hyprshot" #more of a reminder
alias lsa="ls -a" #list all including dotfiles

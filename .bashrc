#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\u@\h \W]$ '

force-color-prompt=yes
alias vim=nvim
alias n=nvim

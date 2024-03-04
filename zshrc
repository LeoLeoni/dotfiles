autoload -Uz promptinit
autoload -Uz vcs_info
# updates the window title whenever a command is run
function xtitle () {
    builtin print -n -- "\e]0;$@\a"
}
function precmd () {
    xtitle "$(print -P $USER@$HOST %2~)"
    vcs_info
}

zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%B%F{green}%n%f%b %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f%% '
promptinit

DISABLE_AUTO_TITLE="true"

alias ll="ls -alF $@"
alias la="ls -A $@"
alias l="ls -CF $@"

alias g="git $@"
alias gs="git status $@"
alias gd="git diff $@"
alias gc="git checkout $@"
alias ga="git add $@"
alias n="nvim $@"

# keep work specific stuff separate
test -f $HOME/.workrc && source $HOME/.workrc

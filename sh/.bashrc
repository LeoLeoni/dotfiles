# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# updates the window title whenever a command is run
xtitle() {
    printf '\e]0;%s\a' "$*"
}

# last two components of $PWD, with ~ for $HOME (zsh's %2~)
short_pwd() {
    local p=${PWD/#$HOME/\~}
    if [[ $p == */*/* ]]; then
        printf '%s' "${p#"${p%/*/*}/"}"
    else
        printf '%s' "$p"
    fi
}

# For showing git info in prompt
vcs_info() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null) ||
        branch=$(git rev-parse --short HEAD 2>/dev/null) ||
        { vcs_info_msg_0_=''; return; }
    vcs_info_msg_0_="$branch "
}

precmd() {
    xtitle "$USER@${HOSTNAME%%.*} $(short_pwd)"
    vcs_info
}
PROMPT_COMMAND=precmd

# Over ssh connection show the hostname to avoid confusion
if [[ -n "$SSH_CONNECTION" ]]; then
    PS1='\[\e[1m\]\[\e[32m\]\u\[\e[39m\]\[\e[38;5;8m\]@\[\e[39m\]\[\e[36m\]\h\[\e[22m\]\[\e[39m\] \[\e[34m\]\w\[\e[39m\] \[\e[35m\]${vcs_info_msg_0_}\[\e[39m\]$ '
else
    PS1='\[\e[1m\]\[\e[32m\]\u\[\e[22m\]\[\e[39m\] \[\e[34m\]\w\[\e[39m\] \[\e[35m\]${vcs_info_msg_0_}\[\e[39m\]$ '
fi

test -f /usr/share/bash-completion/bash_completion && source /usr/share/bash-completion/bash_completion

# direnv
if command -v direnv >/dev/null; then
    eval "$(direnv hook bash)"
fi

alias ll="ls -alF $@"
alias la="ls -A $@"
alias l="ls -CF $@"
alias g="git $@"
alias gs="git status $@"
alias gd="git diff $@"
alias gc="git checkout $@"
alias ga="git add $@"
alias lg="lazygit $@"
alias n="nvim $@"
alias d="docker $@"
alias dc="docker compose $@"

export EDITOR="nvim"

# keep work specific stuff separate
test -f $HOME/.workrc && source $HOME/.workrc

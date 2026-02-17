autoload -Uz promptinit
autoload -Uz compinit
autoload -Uz vcs_info
# updates the window title whenever a command is run
function xtitle () {
    builtin print -n -- "\e]0;$@\a"
}
function precmd () {
    xtitle "$(print -P $USER@$HOST %2~)"
    vcs_info
}

# For showing git info in prompt
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST

# Over ssh connection show the hostname to avoid confusion
if [[ -n "$SSH_CONNECTION" ]]; then
    PROMPT='%B%F{green}%n%f%F{8}@%f%F{cyan}%m%b%f %F{blue}%~%f %F{magenta}${vcs_info_msg_0_}%f%% '
else
    PROMPT='%B%F{green}%n%b%f %F{blue}%~%f %F{magenta}${vcs_info_msg_0_}%f%% '
fi
promptinit

DISABLE_AUTO_TITLE="true"

compinit

# direnv
if (( $+commands[direnv] )); then
    eval "$(direnv hook zsh)"
fi

test -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# zoxide
if (( $+commands[zoxide] )); then
    eval "$(zoxide init --cmd cd zsh)"
fi

alias ll="ls -alF $@"
alias la="ls -A $@"
alias l="ls -CF $@"
alias g="git $@"
alias gs="git status $@"
alias gd="git diff $@"
alias gc="git checkout $@"
alias ga="git add $@"
alias n="nvim $@"

export EDITOR="nvim"

# keep work specific stuff separate
test -f $HOME/.workrc && source $HOME/.workrc

eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${LS_COLORS}"
PROMPT='[%F{magenta}%B%n%b%f@%F{blue}%U%m%u%f]# '
RPROMPT='[%F{green}%d%f]'
autoload -U compinit
compinit

alias ls='ls --color=auto'
alias s='sudo systemctl restart'
alias p='git commit -m "did" && git push origin master'

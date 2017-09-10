#!/bin/zsh
eval $(dircolors ~/.dir_colors)
zstyle ':completion:*' list-colors "${LS_COLORS}"
PROMPT='[%F{magenta}%B%n%b%f@%F{blue}%U%m%u%f]# '
RPROMPT='[%F{green}%d%f]'
autoload -U compinit
compinit

function joff() {
  if pidof qjackctl ; then
    killall qjackctl
  fi
  if pidof jackd ; then
    killall jackd
  fi
  cp ~/dotfiles/.asoundrc_no_jack ~/.asoundrc
  alsactl nrestore
}

function jon() {
  if pidof qjackctl ; then
    killall qjackctl
  fi
  if pidof jackd ; then
    killall jackd
  fi
  cp ~/dotfiles/.asoundrc_with_jack ~/.asoundrc
  alsactl nrestore
  qjackctl &
}

alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias restart='sudo systemctl restart'
alias stop='sudo systemctl stop'
alias status='sudo systemctl status'
alias start='sudo systemctl start'
alias edit='sudo systmctl edit'
alias killmstdn='sudo systemctl stop mastodon-web mastodon-streaming mastodon-sidekiq nginx postgresql redis'
alias startmstdn='sudo systemctl start mastodon-web mastodon-streaming mastodon-sidekiq nginx postgresql redis'
alias p='git commit -m "did" && git push origin master'
alias restart_qjackctl='killall qjackctl && qjackctl &'
alias joff=joff
alias jon=jon


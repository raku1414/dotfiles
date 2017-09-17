# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias vim='nvim'
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
alias edit='sudo systmctl edit --full'
alias killmstdn='sudo systemctl stop mastodon-web mastodon-streaming mastodon-sidekiq'
alias startmstdn='sudo systemctl start mastodon-web mastodon-streaming mastodon-sidekiq'
alias p='git commit -m "did" && git push origin master'
alias restart_qjackctl='killall qjackctl && qjackctl &'
alias joff=joff
alias jon=jon


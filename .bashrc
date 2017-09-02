#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
# >>> BEGIN ADDED BY CNCHI INSTALLER
EDITOR=/usr/bin/nano
# <<< END ADDED BY CNCHI INSTALLER
export PATH=$PATH:~/.cabal/bin:~/dart/dart-sdk/bin:~/bin
#export PATH=$PATH:/opt/opencv2/bin
#export C_INCLUDE_PATH=/opt/opencv2/include/opencv:$C_INCLUDE_PATH
#export 
#CPLUS_INCLUDE_PATH=/opt/opencv2/include/opencv:$CPLUS_INCLUDE_PATH
#export LD_LIBRARY_PATH=/opt/opencv2/lib:$LD_LIBRARY_PATH
#export PKG_CONFIG_PATH=/opt/opencv2/lib/pkgconfig:$PKG_CONFIG_PATH

alias s="sudo systemctl restart"
alias p="git commit -m "did" && git push -u origin master"

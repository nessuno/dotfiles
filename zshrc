#export PATH="${HOME}/bin:${HOME}/bin/scripts:${HOME}/bin/scripts/sshable:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/opt/xcat/bin"
export PATH="${HOME}/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

autoload -Uz compinit colors promptinit
compinit ; colors ; promptinit


bindkey -e
export HISTFILE=~/.zshhistory
export HISTSIZE=20000
export SAVEHIST=20000
#setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt extendedglob

function precmd () { print -Pn "\e]0;[ %m ]:%~\a" }

setopt INTERACTIVE_COMMENTS
setopt SHARE_HISTORY
setopt APPEND_HISTORY
unsetopt AUTO_REMOVE_SLASH

#PROMPT="[%n]@[%M]:%~%# "
#PROMPT="┌[%{$fg[blue]%}%n%{$reset_color%}]@[%M] [ %{$fg[magenta]%}%~%{$reset_color%} ]$prompt_newline└> "
PROMPT="[%{$fg[blue]%}%n%{$reset_color%}]@[%M] [ %{$fg[magenta]%}%~%{$reset_color%} ]$prompt_newline» "
#PROMPT="[%{$fg[blue]%}%n%{$reset_color%}]@[%M] [ %{$fg[magenta]%}%~%{$reset_color%} ]$prompt_newline%{Ŀ%} > "

alias ls="ls --color -F"
alias less="less -i"
alias cdiff="colordiff"
alias cal="cal -3"
alias datestamp.me='date +"%Y.%m.%d"'
alias datestamp.utc='TZ="UTC" date'
alias datestamp.datetime='date +%Y.%m.%d_%H.%M.%S'
alias distupdate.me='sudo sh -c "apt-get clean ; apt-get update ; apt-get dist-upgrade" '
alias driftadjust.me='sudo sh -c "/etc/init.d/ntp stop ; /usr/sbin/ntpd -q -g ; /etc/init.d/ntp start" '


export EDITOR="vim"
export VISUAL="vim"
export TERM=xterm-256color

[[ -n $TMUX ]] && TERM=screen-256color

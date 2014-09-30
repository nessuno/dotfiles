########################################################################
#
#   ToDo
#

#   Set the special path var as a unique list
typeset -U path
path=( ~/bin/sys $path )

#
#   Set window title
#
function precmd () { print -Pn "\e]0;[ %m ]:%~\a" }

#
#   autoload
#
autoload -Uz compinit colors promptinit
compinit ; colors ; promptinit

#   Set my default options

bindkey -e
export EDITOR="vim"
export VISUAL="vim"
export HISTFILE=~/.zshhistory
export HISTSIZE=20000
export SAVEHIST=20000


#setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt extendedglob


setopt INTERACTIVE_COMMENTS
setopt SHARE_HISTORY
setopt APPEND_HISTORY
unsetopt AUTO_REMOVE_SLASH

#   My prompts 

#PROMPT="[%n]@[%M]:%~%# "
#PROMPT="[%{$fg[blue]%}%n%{$reset_color%}]@[%M] [ %{$fg[magenta]%}%~%{$reset_color%} ] > "
#PROMPT="[%{$fg[blue]%}%n%{$reset_color%}]@[%M] [ %{$fg[magenta]%}%~%{$reset_color%} ]» "
#PROMPT="[%{$fg[blue]%}%n%{$reset_color%}]@[%M] [ %{$fg[magenta]%}%~%{$reset_color%} ]$prompt_newline» "
PROMPT="┌[%{$fg[blue]%}%n%{$reset_color%}]@[%M] [ %{$fg[magenta]%}%~%{$reset_color%} ]$prompt_newline└> "

#
#   Remember to generate dircolors on the box w/ the colour scheme you want to
#   use.
#

#
#   GNU dircolors on a mac
#
#[[ -e dircolors ]] && eval $(dircolors --sh)
[[ -e gdircolors ]] && eval $(gdircolors --sh)

#   Aliases


#
#   Linux only
#
#alias cal="cal -3"
#alias ls="ls --color -F"

#
#   Mac using GNU ls
#
alias ls="/usr/local/bin/gls --color -F"


alias less="less -i"
alias cdiff="colordiff"
alias datestamp.me='date +"%Y.%m.%d"'
alias datetimestamp.me='date +"%Y.%m.%d-%H:%M:%S"'
alias datestamp.utc='TZ="UTC" date'
alias datestamp.datetime='date +%Y.%m.%d_%H.%M.%S'
alias distupdate.me='sudo sh -c "apt-get clean ; apt-get update ; apt-get dist-upgrade" '
alias driftadjust.me='sudo sh -c "/etc/init.d/ntp stop ; /usr/sbin/ntpd -q -g ; /etc/init.d/ntp start" '

#
#   Kludge for gnome terminal.  It doesn't properly set the TERM var
#   like most terminals.  Therefore, I have to do this myself.
#
[[ $TERM == "xterm" ]] && TERM=gnome-256color

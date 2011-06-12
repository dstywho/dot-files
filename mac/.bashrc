# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# ENV VARS
export EDITOR=vim
export SVN_EDITOR=vim
export CLICOLOR=1
export LSCOLORS="exgxbxdxcxegedxbxgxcxd"
export h=dustin.homelinux.org

#Colors
BROWN="\[\e[38;5;143m\]"
BLUE="\[\e[38;5;117m\]"
MUSTARD="\[\e[38;5;220m\]"
WHITE="\[\e[00m\]"


PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
PS1="[\$CurDir] \$ "
if [ "$TERM" = "xterm-256color" ] ; then
	PS1="\n$BROWN\u$BLUE@$MUSTARD\h$WHITE:$BLUE\w  \n$WHITE\$ "
else
	PS1='\n\u@\h:\w \n$'
fi

alias sync='rsync -r -u --partial --progress --rsh=ssh $1 $2'

### Enhanse some commands ###
alias ls="ls -G"
alias port="sudo port"
alias grep="grep --color=auto"


### Some tools needed ###
function gitsucks_function {                                                             
  for i in $(find . -type d -regex ``./[^.].*'' -empty); do
    touch $i"/.gitignore";
  done;
}
alias gitsucks="gitsucks_function"
rails_ignore='config/database.yml
config/*.sphinx.conf
config/s3_credentials.yml
*~
*.cache
*.log
*.pid
tmp/**/*
.DS_Store
db/cstore/**
db/sphinx/**
doc/api
doc/app
doc/plugins
doc/*.dot
coverage/*
db/*.sqlite3
*.tmproj
*.sw?'

alias rails_ignore="echo '${rails_ignore}' >> .gitignore"


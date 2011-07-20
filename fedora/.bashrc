alias deployTest='echo '\''scp !^ test.calgbapps.org:/opt/jboss/test/server/all/farm'\'''
alias kvm='ssh 152.16.7.170'
alias kvm_dev='ssh 152.16.7.170 -p 9001'
alias kvm_test='ssh 152.16.7.170 -p 9002'
alias ls='ls --color=auto'
alias vi='vim'
alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
alias yum='sudo yum'
alias gitsvnworkflow="echo '
# initial setup
git svn clone <svn_repo>

# 99% of daily workflow
git checkout -b <work_branch>
    ...hack...hack...
git commit -a

# switch back to master, then rebase against
# any revisions in the svn repo
git checkout master
git svn rebase

# now that master is current with svn,
# sync working branch to local master
git checkout <work_branch> # These two are the added steps
git rebase master          # which help prevent conflicts

# final upstream commit after rebasing
git checkout master
git svn rebase # one last check for new svn check ins
git merge <work_branch>
git svn dcommit -e'
"

BROWN="\[\e[38;5;143m\]"
BLUE="\[\e[38;5;117m\]"
MUSTARD="\[\e[38;5;170m\]"
NOCOLOR="\[\e[00m\]"

export PS1="\n$BROWN\u$BLUE@$MUSTARD\h$WHITE:$BLUE\w  \n$NOCOLOR\$ "

alias xclip="xclip -sel clip"
alias yum="sudo yum"
alias githist="git log --graph --full-history --all --pretty=format:\"%h%x09%d%x20%s\""


alias kvm="ssh 152.16.7.170"
function kvm_test
{
	ssh 152.16.7.170 -D 9002
}

function copy_kvm_test
{
	scp -P 9002 $1 152.16.7.170:~
}
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

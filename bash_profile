# http://unix.stackexchange.com/questions/105958/terminal-prompt-not-wrapping-correctly
export PS1="\[\033[0;32m\]\u@\h \W\[\033[0m\]$ "

alias ls='ls -G'

# git stuff
alias ad='arc diff --nounit --nolint'
alias com='git commit -a'
alias amend='git commit -a --amend'
alias push='git push -f origin `git rev-parse --abbrev-ref HEAD`'
alias add='git add'

alias gg='git grep'
alias gl='git log --format=fuller'
alias gs='git ls-files | grep -v go-build | xargs gsed -i'
alias gns='git show --name-status'
alias s='git status -uno'
alias kssh='pkill -f "ssh -NL"'

b() {
  if [ -z "$1" ]; then
    git branch
  else
    git checkout $1
  fi
}

# uber
goclone() {
  mkdir -p $GOPATH/src/code.uber.internal/$1
  git clone gitolite@code.uber.internal:$1 $GOPATH/src/code.uber.internal/$1 --recursive
}

alias a='ssh adhoc07-sjc1'
alias ksjc='ssh adhoc07-sjc1 k8read'
alias kdca='ssh adhoc07-dca1 k8read'
alias sql='a vsql -U svc_beehive -w t5AVEGqsGMb1ltA -p 15521'
tu() { ssh -NL $2:127.0.0.1:$2 $1; }

# others
source env/bin/activate 2> /dev/null
alias ts='date -ju -f "%Y-%m-%d %H:%M:%S" +%s'
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

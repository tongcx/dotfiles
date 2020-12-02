# http://unix.stackexchange.com/questions/105958/terminal-prompt-not-wrapping-correctly
export PS1="\[\033[0;32m\]\u@\h \W\[\033[0m\]$ "

export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# git stuff
alias push='git push -f origin `git rev-parse --abbrev-ref HEAD`'
alias add='git add'
alias com='add . && git commit'
alias amend='add . && git commit --amend'

alias gg='git grep'
alias gl='git log --format=fuller'
alias gs='git ls-files | grep -v go-build | xargs gsed -i'
alias gns='git show --name-status'
alias rset='git reset --hard'
alias s='git status .'
alias d='git diff .'
alias kssh='pkill -f "ssh -NL"'

gr() {
  grep -R "$1" .
}

b() {
  if [ -z "$1" ]; then
    git branch
  else
    git checkout $1
  fi
}

# others
source env/bin/activate 2> /dev/null
alias ts='date -ju -f "%Y-%m-%d %H:%M:%S" +%s'
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

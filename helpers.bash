export DIFF_FILE=~/checkit.diff
alias diffuncached="git diff > $DIFF_FILE"
alias diffuncachedw="git diff -w > $DIFF_FILE"
alias diffcached="git diff --cached > $DIFF_FILE"
alias diffcachedw="git diff -w --cached > $DIFF_FILE"
alias diffhead="git diff HEAD^ > $DIFF_FILE"
alias diffheadw="git diff -w HEAD^ > $DIFF_FILE"
alias diffinthead="git diff integration HEAD > $DIFF_FILE"
alias diffintheadw="git diff -w integration HEAD > $DIFF_FILE"

alias ls='ls -lGFh'

alias uuid="python3 -c 'import uuid; print(uuid.uuid4(), end=\"\")'"

# gets the ctime of given milliseconds since the epoche
ctime() {
  python3 -c "from time import ctime; print(ctime($1 / 1000))"
}

# gets the ctime of given seconds since the epoche
ctimes() {
  python3 -c "from time import ctime; print(ctime($1))"
}

commitrebase() {
    git commit -am "fixup" && git rebase -i HEAD~${1:-2}
}

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

alias json="python -m json.tool"
alias len="python -c \"import sys; print len(sys.argv[1]) if len(sys.argv) == 2 else 'expected exactly one argument but got {}'.format(len(sys.argv))\""

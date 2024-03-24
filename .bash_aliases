#----------------------------------------------------------------------
# Renaming
#----------------------------------------------------------------------
alias ls="ls --color=always --group-directories-first"
alias grep="grep --color=always"
alias vi="vim"

#----------------------------------------------------------------------
# Variables
#----------------------------------------------------------------------
export vimrc=~/.vimrc
export profile=~/.bash_aliases
export gitconfig=~/.gitconfig

#----------------------------------------------------------------------
# Functions
#----------------------------------------------------------------------
cd_aux() {
    if [ -d ../"$1" ]; then
        cd ../"$1"
    else
        cd "$1"
    fi
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

swap() {
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE "$2"
}

#----------------------------------------------------------------------
# Alias
#----------------------------------------------------------------------
for dir in "$HOME"/Documents/*; do
    [ -d "$dir" ] && alias $(basename "$dir")="cd $dir"
done

for dir in "$HOME"/Documents/*; do
    [ -d "$dir" ] && export $(basename "$dir")="$dir"
done

alias ll="ls -l"
alias lla="ll -A"
alias llt="ll -t"

alias sp="source $profile"
alias vp="vim $profile"
alias vv="vim $vimrc"
alias vg="vim $gitconfig"

alias gs="clear; grep --include=\*.{cpp,h,cc,hh} --exclude=\*.t.{h,cpp}"
alias gy="clear; grep --include=\*.py --exclude-dir={venv,.venv}"
alias f="find * -name"
alias tag="ctags -R *"
alias update="sudo apt update -y; sudo apt dist-upgrade -y"

alias nb='jupyter notebook'

#----------------------------------------------------------------------
# Settings
#----------------------------------------------------------------------
set -o vi

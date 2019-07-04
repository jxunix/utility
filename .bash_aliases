#----------------------------------------------------------------------
# Renaming
#----------------------------------------------------------------------
alias ls="ls --color=always"
alias grep="grep --color=always"
alias vi="vim"

#----------------------------------------------------------------------
# Variables
#----------------------------------------------------------------------
export vimrc=~/.vimrc
export profile=~/.bash_aliases

#----------------------------------------------------------------------
# Functions
#----------------------------------------------------------------------
v_aux() {
    if [ "${1: -1}" == "." ]; then
        vim -O $1{h,cpp}
    elif [ "${1: -4}" == ".cpp" ]; then
        vim "$1"
    elif [ "${1: -2}" == ".h" ]; then
        vim "$1"
    else
        vim -O $1.{h,cpp}
    fi
}

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

#----------------------------------------------------------------------
# Alias
#----------------------------------------------------------------------
for dir in "$HOME"/*; do
    [ -d "$dir" ] && alias $(basename "$dir")="cd $dir"
done

for dir in "$HOME"/*; do
    [ -d "$dir" ] && export $(basename "$dir")="$dir"
done

alias src="cd_aux src"
alias tst="cd_aux test"
alias build="cd_aux build"

alias ll="ls -l"
alias lla="ll -A"
alias llt="ll -t"

alias v="v_aux"
alias sp="source $profile"
alias vp="vim $profile"
alias vv="vim $vimrc"

alias gs="clear; grep --include=\*.{cpp,h,cc,hh} --exclude=\*.t.{h,cpp} -nr"
alias f="find * -name"
alias tag="ctags -R *"
alias update="sudo apt update -y; sudo apt dist-upgrade -y"

#----------------------------------------------------------------------
# Variables
#----------------------------------------------------------------------
export PS1=$'\E[32;7m${HOSTNAME}\E[0m\E[32;1m:\W\E[0m\E[31;1m$(parse_git_branch)\E[0m \$ '

set -o vi

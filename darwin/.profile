#-------------------------------------------------------------------------------
# Global Variables
#-------------------------------------------------------------------------------
hostname=$(echo ${HOSTNAME} | cut -c1-8)

#-------------------------------------------------------------------------------
# Auxiliary Functions
#-------------------------------------------------------------------------------
ls_aux() {
    count=$(ls -1 | wc -l)
    if [ $count -gt 25 ]
    then
        ls -G $@
    else
        ls -1 -G $@
    fi
}

gs_aux() {
    grep --include \*.h --include \*.cpp -r "$@" *
}

#-------------------------------------------------------------------------------
# Alias
#-------------------------------------------------------------------------------
alias ls="ls -G"
alias ll="ls -l"
alias la="ls -a"
alias l="ls_aux"

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias m="make"
alias mc="make clean"

alias gs="gs_aux"
alias f="find . -name"

#-------------------------------------------------------------------------------
# Exports
#-------------------------------------------------------------------------------
export PS1=$'\E[32;7m${hostname}\E[0m\E[32;1m:\W\E[0m \$ '
export myvimrc=~/.vimrc
export myprofile=~/.profile

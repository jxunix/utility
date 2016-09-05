hostname=$(echo ${HOSTNAME}|cut -c1-8)
export PS1=$'\E[32;7m${hostname}\E[0m\E[32;1m:\W\E[0m \$ '

#-------------------------------------------------------------------------------
# Auxiliary Functions
#-------------------------------------------------------------------------------
push_aux() {
    git add -A
    read -p "Commit message: " msg
    git commit -m "$msg"
    git push
}

alias ls="ls -G"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -al"

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias m="make"
alias mc="make clean"

alias clone="git clone"
alias push="push_aux"
alias pull="git pull"
alias clone="git clone"

dropbox="${HOME}/Dropbox"
project="${HOME}/Documents"

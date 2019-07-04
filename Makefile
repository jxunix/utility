# Makefile

.PHONY: clean push pull install

REPO="git@github.com:jxunix/utility.git"
PWD=$(echo `pwd`)

all: push

pull:
	git pull "${REPO}"
	ln -sf  "$pwd"/.bash_aliases  ~/.bash_aliases
	ln -sf  "$pwd"/.vimrc         ~/.vimrc
	ln -sf  "$pwd"/.gitconfig     ~/.gitconfig
	ln -sfn "$pwd"/ftplugin       ~/.vim/ftplugin
	ln -sfn "$pwd"/colors         ~/.vim/colors

push:
	git add -A
	git cm "update"
	git push origin master

install:
	./install.sh

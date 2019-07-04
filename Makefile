# Makefile

.PHONY: clean push pull install

REPO="git@github.com:jxunix/utility.git"
PWD=$(echo `pwd`)

all: push

pull:
	git pull "${REPO}"
	ln -sf  "${PWD}"/.bash_aliases  ~/.bash_aliases
	ln -sf  "${PWD}"/.vimrc         ~/.vimrc
	ln -sf  "${PWD}"/.gitconfig     ~/.gitconfig
	ln -sfn "${PWD}"/ftplugin       ~/.vim/ftplugin
	ln -sfn "${PWD}"/colors         ~/.vim/colors

push:
	git add -A
	git cm "update"
	git push origin master

install:
	./install.sh

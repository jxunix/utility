# Makefile

.PHONY: clean push pull install

REPO = "git@github.com:jxunix/utility.git"
ROOT = $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))

all: push

pull:
	git pull ${REPO}
	ln -sf  ${ROOT}/.bash_aliases  ~/.bash_aliases
	ln -sf  ${ROOT}/.vimrc         ~/.vimrc
	ln -sf  ${ROOT}/.gitconfig     ~/.gitconfig
	ln -sfn ${ROOT}/ftplugin       ~/.vim/ftplugin
	ln -sfn ${ROOT}/colors         ~/.vim/colors

push:
	git add -A
	git cm "update"
	git push origin master

install:
	./install.sh

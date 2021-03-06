# Makefile

.PHONY: pull push config install

ROOT = $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))

all: push

pull:
	git pull origin master

push:
	git add -A
	git commit -m "update"
	git push origin master

config: pull
	ln -sf  ${ROOT}/.bash_aliases  ~/.bash_aliases
	ln -sf  ${ROOT}/.vimrc         ~/.vimrc
	ln -sf  ${ROOT}/.gitconfig     ~/.gitconfig
	ln -sfn ${ROOT}/ftplugin       ~/.vim/ftplugin
	ln -sfn ${ROOT}/colors         ~/.vim/colors

install:
	./install.sh

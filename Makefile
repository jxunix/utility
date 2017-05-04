# Makefile

.PHONY: clean push pull install

REPO="git@github.com:jxunix/utility.git"

all: push

pull:
	git pull ${REPO}
	ln -sf ~/Documents/code/utility/.bashrc    ~/.bashrc
	ln -sf ~/Documents/code/utility/.vimrc     ~/.vimrc
	ln -sf ~/Documents/code/utility/.gitconfig ~/.gitconfig
	ln -sf ~/Documents/code/utility/ftplugin   ~/.vim/ftplugin
	ln -sf ~/Documents/code/utility/colors     ~/.vim/colors

push:
	git add -A
	git co -m "update"
	git push origin master

install:
	./install.sh

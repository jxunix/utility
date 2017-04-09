# Makefile

.PHONY: clean push pull install

REPO="git@github.com:jxunix/utility.git"

all: push

pull:
	git pull ${REPO}
	ln -sf ~/Documents/utility/.bashrc    ~/.bashrc
	ln -sf ~/Documents/utility/.vimrc     ~/.vimrc
	ln -sf ~/Documents/utility/.gitconfig ~/.gitconfig
	ln -sf ~/Documents/utility/ftplugin   ~/.vim/ftplugin
	ln -sf ~/Documents/utility/colors     ~/.vim/colors

push:
	git add -A
	git co -m "update"
	git push origin master

install:
	./install.sh

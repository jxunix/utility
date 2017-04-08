# Makefile

.PHONY: clean push pull install

REPO = "git@github.com:jxunix/utility.git"

pull:
	git pull $REPO
	ln -sf ./.bashrc    ~/.bashrc
	ln -sf ./.vimrc     ~/.vimrc
	ln -sf ./.gitconfig ~/.gitconfig
	ln -sf ./ftplugin   ~/.vim/ftplugin
	ln -sf ./colors     ~/.vim/colors

push:
	git add -A
	git co -m "update"
	git push origin master

install:
	./install.sh

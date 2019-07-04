# Makefile

.PHONY: clean push pull install

REPO="git@github.com:jxunix/utility.git"

all: push

pull:
	git pull ${REPO}
	ln -sf  ~/utility/.bash_aliases  ~/.bash_aliases
	ln -sf  ~/utility/.vimrc         ~/.vimrc
	ln -sf  ~/utility/.gitconfig     ~/.gitconfig
	ln -sfn ~/utility/ftplugin       ~/.vim/ftplugin
	ln -sfn ~/utility/colors         ~/.vim/colors

push:
	git add -A
	git cm "update"
	git push origin master

install:
	./install.sh

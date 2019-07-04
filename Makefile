# Makefile

.PHONY: clean push pull install

REPO="git@github.com:jxunix/utility.git"

all: push

pull:
	git pull ${REPO}
	ln -sf  ./.bashrc_aliases ~/.bashrc_aliases
	ln -sf  ./.vimrc          ~/.vimrc
	ln -sf  ./.gitconfig      ~/.gitconfig
	ln -sfn ./ftplugin        ~/.vim/ftplugin
	ln -sfn ./colors          ~/.vim/colors

push:
	git add -A
	git cm "update"
	git push origin master

install:
	./install.sh

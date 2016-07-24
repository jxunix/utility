# Makefile

.PHONY: push pull install

UNAME_S := $(shell uname -s)

push:
ifeq ($(UNAME_S),Linux)
	cp -r ~/.vimrc linux/
	cp -r ~/.vim/ftplugin linux/
	cp -r ~/.vim/template linux/
	git add -A
	git commit -m 'sync'
	git push origin master
endif
ifeq ($(UNAME_S),Darwin)
	cp -R ~/.vimrc mac/
	cp -R ~/.vim/ftplugin mac/
	cp -R ~/.vim/template mac/
	git add -A
	git commit -m 'sync'
	git push origin master
endif

pull:
ifeq ($(UNAME_S),Linux)
	git pull https://github.com/jxunix/utility
	cp linux/.vimrc ~/
	cp -r linux/ftplugin ~/.vim
	cp -r linux/template ~/.vim
endif
ifeq ($(UNAME_S),Darwin)
	git pull https://github.com/jxunix/utility
	cp mac/.vimrc ~/
	cp -R mac/ftplugin ~/.vim
	cp -R mac/template ~/.vim
endif

install:
ifeq ($(UNAME_S),Linux)
	sudo sh ./mac/install.sh
endif
ifeq ($(UNAME_S),Darwin)
	sudo sh ./linux/install.sh
endif

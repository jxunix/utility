.PHONY: push pull install

UNAME_S := $(shell uname -s)
OS = `echo $(UNAME_S) | tr A-Z a-z`
VIMRC = ".vimrc"
FTPLUGIN = "ftplugin"
TEMPLATE = "template"
INSTALL = "install.sh"
DIR_VIMRC = "${HOME}"
DIR_VIM = "${HOME}/.vim"
ULTISNIPS = "bundle/ultisnips"
SNIPPETS = "snippets"

push:
	cp ${DIR_VIMRC}/${VIMRC} ${OS}/
	cp -r ${DIR_VIM}/${FTPLUGIN} ./
	cp -r ${DIR_VIM}/${TEMPLATE} ./
	cp -r ${DIR_VIM}/${ULTISNIPS}/${SNIPPETS} ./
	git add -A
	git commit -m "sync"
	git push origin master

pull:
	git pull git@github.com:jxunix/utility.git
	cp ${OS}/${VIMRC} ${DIR_VIMRC}
	cp -r ${FTPLUGIN} ${DIR_VIM}/
	cp -r ${TEMPLATE} ${DIR_VIM}/
	cp -r ${SNIPPETS} ${DIR_VIM}/${ULTISNIPS}

install:
	sudo sh ./${OS}/${INSTALL}

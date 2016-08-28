.PHONY: push pull install

UNAME_S := $(shell uname -s)
OS = `echo $(UNAME_S) | tr A-Z a-z`
VIMRC = ".vimrc"
FTPLUGIN = "ftplugin"
TEMPLATE = "template"
COLORS = "colors"
INSTALL = "install.sh"
DIR_VIM = "${HOME}/.vim"
ULTISNIPS = "bundle/ultisnips"
SNIPPETS = "snippets"

STARTUP = ".profile"
ifeq (${OS}, linux)
	${STARTUP} = ".bashrc"
endif

push:
	cp ${HOME}/${STARTUP} ${OS}/
	cp ${HOME}/${VIMRC} ${OS}/
	cp -r ${DIR_VIM}/${FTPLUGIN} ./
	cp -r ${DIR_VIM}/${TEMPLATE} ./
	cp -r ${DIR_VIM}/${COLORS} ./
	cp -r ${DIR_VIM}/${ULTISNIPS}/${SNIPPETS} ./
	git add -A
	git commit -m "sync"
	git push origin master

pull:
	git pull git@github.com:jxunix/utility.git
	cp ${OS}/${STARTUP} ${HOME}
	cp ${OS}/${VIMRC} ${HOME}
	cp -r ${FTPLUGIN} ${DIR_VIM}/
	cp -r ${TEMPLATE} ${DIR_VIM}/
	cp -r ${COLORS} ${DIR_VIM}/
	cp -r ${SNIPPETS} ${DIR_VIM}/${ULTISNIPS}

install:
	sudo sh ./${OS}/${INSTALL}

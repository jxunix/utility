# Makefile

.PHONY: push pull install

UNAME_S := $(shell uname -s)
OS = `echo $(UNAME_S) | tr A-Z a-z`
VIMRC = ".vimrc"
FTPLUGIN = "ftplugin"
COLORS = "colors"
INSTALL = "install.sh"
DIR_VIM = "${HOME}/.vim"

BASHRC = ".bashrc"
ifeq (${OS}, darwin)
	${BASHRC} = ".profile"
endif

push:
	rm -f ${FTPLUGIN}/* ${COLORS}/*
	cp ${HOME}/${BASHRC}        ${OS}/
	cp ${HOME}/${VIMRC}         ${OS}/
	cp ${DIR_VIM}/${FTPLUGIN}/* ${FTPLUGIN}/
	cp ${DIR_VIM}/${COLORS}/*   ${COLORS}/
	git add -A
	git commit -m "sync"
	git push origin master

pull:
	git pull git@github.com:jxunix/utility.git
	rm -f ${DIR_VIM}/${FTPLUGIN}/* ${DIR_VIM}/${COLORS}/*
	cp ${OS}/${BASHRC} ${HOME}/
	cp ${OS}/${VIMRC}  ${HOME}/
	cp ${FTPLUGIN}/*   ${DIR_VIM}/${FTPLUGIN}/
	cp ${COLORS}/*     ${DIR_VIM}/${COLORS}/

install:
	sudo sh ./${OS}/${INSTALL}

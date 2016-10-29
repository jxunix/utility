.PHONY: push pull install

UNAME_S := $(shell uname -s)
OS = `echo $(UNAME_S) | tr A-Z a-z`
VIMRC = ".vimrc"
FTPLUGIN = "ftplugin"
COLORS = "colors"
INSTALL = "install.sh"
DIR_VIM = "${HOME}/.vim"
ULTISNIPS = "bundle/ultisnips"
SNIPPETS = "snippets"

BASHRC = ".bashrc"
ifeq (${OS}, darwin)
	${BASHRC} = ".profile"
endif

push:
	rm -rf ${OS}/${BASHRC} ${OS}/${VIMRC} ${FTPLUGIN} ${COLORS} ${SNIPPETS}
	cp ${HOME}/${BASHRC}                      ${OS}/
	cp ${HOME}/${VIMRC}                       ${OS}/
	cp -r ${DIR_VIM}/${FTPLUGIN}              ./
	cp -r ${DIR_VIM}/${COLORS}   			  ./
	cp -r ${DIR_VIM}/${ULTISNIPS}/${SNIPPETS} ./
	git add -A
	git commit -m "sync"
	git push origin master

pull:
	git pull git@github.com:jxunix/utility.git
	rm -rf ${HOME}/${BASHRC} ${HOME}/${BASHRC} ${DIR_VIM}/${FTPLUGIN} ${DIR_VIM}/${COLORS} ${DIR_VIM}/${ULTISNIPS}/${SNIPPETS}
	cp ${OS}/${BASHRC} ${HOME}
	cp ${OS}/${VIMRC}  ${HOME}
	cp -r ${FTPLUGIN}  ${DIR_VIM}/
	cp -r ${COLORS}    ${DIR_VIM}/
	cp -r ${SNIPPETS}  ${DIR_VIM}/${ULTISNIPS}

install:
	sudo sh ./${OS}/${INSTALL}

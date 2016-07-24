#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install tmux

brew cask install citrix-receiver
brew cask install dash
brew cask install dropbox
brew cask install flash
brew cask install google-chrome
brew cask install iterm2
brew cask install mactex
brew cask install macvim
brew cask install moon
brew cask install skype

brew tap homebrew/science
brew install r
brew install Caskroom/cask/rstudio

ssh-keygen -t rsa -C "xnirvana508@gmail.com"
# copy ssh key to github.com
vim ~/.ssh/id_rsa.pub
ssh -T git@github.com

if [ ! -d "~/.vim" ]; then
	mkdir ~/.vim
fi
cp -R ftplugin ~/.vim
cp -R template ~/.vim

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer

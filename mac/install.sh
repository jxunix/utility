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

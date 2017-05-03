#!/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install dropbox
brew cask install flash
brew cask install google-chrome
brew cask install iterm2
brew cask install macvim

brew tap homebrew/science
brew install r
brew install Caskroom/cask/rstudio

#!/bin/bash

sudo -i

apt update -y
apt dist-upgrade -y

add-apt-repository ppa:graphics-drivers/ppa

apt install -y ibus
apt install -y ibus-clutter
apt install -y ibus-gtk
apt install -y ibus-gtk3
apt install -y ibus-qt4
apt install -y ibus-pinyin
ibus restart

apt install -y build-essential
apt install -y cmake
apt install -y ctags
apt install -y default-jdk
apt install -y fcitx-googlepinyin
apt install -y git
apt install -y nautilus-dropbox
apt install -y python-dev
apt install -y python-numpy
apt install -y python3-numpy
apt install -y r-base
apt install -y texlive-full
apt install -y unrar
apt install -y vim

apt update -y
apt dist-upgrade -y

exit

# ssh to github
ssh-keygen -t rsa -C "xnirvana508@gmail.com"
cat ~/.ssh/id_rsa.pub
while true; do
    read -p "Have you copied the public key to github.com? " yn
    case $yn in
        [Yy]* ) ssh -T git@github.com; break;;
        [Nn]* ) echo "Please do it.";;
        * ) echo "Please answer yes or no.";;
    esac
done

# .vimrc and .vim
dir_utility="~/Documents/utility"
git_utility="https://github.com/jxunix/utility.git"

git clone "$git_utility" "$dir_utility"
ln -sf "$dir_utility"/.vimrc    ~/.vimrc
ln -sf "$dir_utility"/colors    ~/.vim/colors
ln -sf "$dir_utility"/ftplugin  ~/.vim/ftplugin

# .bashrc and .gitconfig
ln -sf "dir_utility"/.bashrc    ~/.bashrc
ln -sf "dir_utility"/.gitconfig ~/.gitconfig

# vundle
dir_vundle="~/.vim/bundle/Vundle.vim"
git_vundle="https://github.com/gmarik/Vundle.vim.git" 

git clone "$git_vundle" "$dir_vundle"

# youcompleteme
dir_ycm="~/.vim/bundle/YouCompleteMe"
git_ycm="https://github.com/Valloric/YouCompleteMe"

git clone "$git_ycm" "$dir_ycm"
cd "$dir_ycm"
git submodule update --init --recursive
./install.py --clang-completer

cd

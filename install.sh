#!/bin/bash

sudo -i

apt update -y
apt dist-upgrade -y

add-apt-repository ppa:graphics-drivers/ppa

apt install ibus -y
apt install ibus-clutter -y
apt install ibus-gtk -y
apt install ibus-gtk3 -y
apt install ibus-qt4 -y
apt install ibus-pinyin -y
ibus restart

apt install build-essential -y
apt install cmake -y
apt install ctags -y
apt install default-jdk -y
apt install fcitx-googlepinyin -y
apt install git -y
apt install nautilus-dropbox -y
apt install python-dev -y
apt install r-base -y
apt install texlive-full -y
apt install unrar -y
apt install vim -y

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
cp    "$dir_utility"/.vimrc   ~/
cp -r "$dir_utility"/colors   ~/.vim/
cp -r "$dir_utility"/ftplugin ~/.vim/

# vundle
dir_vundle="~/.vim/bundle/Vundle.vim"
git_vundle="https://github.com/gmarik/Vundle.vim.git" 

git clone "$git_vundle" "$dir_vundle"

# youcompleteme
dir_ycm="~/.vim/bundle/YouCompleteMe"
git_ycm="https://github.com/Valloric/YouCompleteMe"

cd "$dir_ycm"
git clone "$git_ycm" "$dir_ycm"
git submodule update --init --recursive
./install.py --clang-completer

# .bashrc

# .gitconfig

cd

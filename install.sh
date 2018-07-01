#!/bin/bash

echo "+-----------------------+"
echo "| #1. nvidia gpu driver |"
echo "| #2. git               |"
echo "| #3. everything else   |"
echo "| #4. tensorflow        |"
echo "+-----------------------+"

read -p "Which to install? " option
case $option in
    [1]* )

        #version=$(lsb_release -a 2>/dev/null | \
            #grep Description | \
            #sed -r 's/.* ([0-9]*\.[0-9]*\.[0-9]*) .*/\1/')
        #nvidia=$(apt search nvidia 2>/dev/null | \
            #grep -E "nvidia-[0-9]{3}/.*$version" | \
            #tail -1 | \
            #cut -d '/' -f 1)

        #sudo add-apt-repository ppa:graphics-drivers/ppa
        #sudo apt update  -y
        #sudo apt install -y $nvidia
        #sudo reboot

        ;;

    [2]* )

        #sudo apt install -y vim
        #sudo apt install -y git
        #ssh-keygen -t rsa -C "xnirvana508@gmail.com"
        #cat ~/.ssh/id_rsa.pub
        #while true; do
            #read -p "Have you copied the public key to github.com? " yn
            #case $yn in
                #[Yy]* ) ssh -T git@github.com; break;;
                #[Nn]* ) echo "Please do it.";;
                #* ) echo "Please answer yes or no.";;
            #esac
        #done

        #dir_utility="/home/jun/Documents/code/utility"
        #git_utility="https://github.com/jxunix/utility.git"

        #git clone "$git_utility" "$dir_utility"
        #ln -sf  "$dir_utility"/.bashrc    ~/.bashrc
        #ln -sf  "$dir_utility"/.vimrc     ~/.vimrc
        #ln -sf  "$dir_utility"/.gitconfig ~/.gitconfig
        #ln -sfn "$dir_utility"/colors     ~/.vim/colors
        #ln -sfn "$dir_utility"/ftplugin   ~/.vim/ftplugin

        #dir_vundle="/home/jun/.vim/bundle/Vundle.vim"
        #git_vundle="https://github.com/gmarik/Vundle.vim.git" 

        #git clone "$git_vundle" "$dir_vundle"

        #dir_ycm="/home/jun/.vim/bundle/YouCompleteMe"
        #git_ycm="https://github.com/Valloric/YouCompleteMe"

        #git clone "$git_ycm" "$dir_ycm"
        #cd "$dir_ycm"
        #git submodule update --init --recursive
        #./install.py --clang-completer
        #cd -

        ;;


    [3]* )

        #sudo -i

        #apt install -y build-essential
        #apt install -y cmake
        #apt install -y ctags
        #apt install -y default-jdk
        #apt install -y git
        #apt install -y ibus-pinyin
        #apt install -y nautilus-dropbox
        #apt install -y python-dev
        #apt install -y python-numpy
        #apt install -y python3-numpy
        #apt install -y r-base
        #apt install -y texlive-full
        #apt install -y unrar

        #ibus restart

        #apt update -y
        #apt dist-upgrade -y

        #exit

        ;;

    [4]* )

        echo "2. Pre-installation Actions"

        echo "2.1. Verify You Have a CUDA-Capable GPU"
        lspci | grep -i nvidia

        echo ""
        echo "2.2. Verify You Have a Supported Version of Linux"
        uname -m && cat /etc/*release

        echo ""
        echo "2.3. Verify the System Has gcc Installed"
        gcc --version

        echo ""
        echo "2.4. Verify the System has the Correct Kernel Headers and Development Packages Installed"
        uname -r
        sudo apt install linux-headers-$(uname -r)

        echo ""
        echo "2.5. Choose an Installation Method"
        echo "Distribution-specific packages"

        echo ""
        echo "2.6. Download the NVIDIA CUDA Toolkit"

        echo ""
        echo "2.7. Handle Conflicting Installation Methods"
        echo "For CUDA toolkit and nvidia driver, if both are deb, it's fine"

        echo ""
        echo "3. Package Manager Installation"
        cd ~/Downloads
        sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64.deb
        sudo apt update
        sudo apt install -y cuda
        cd -

        ;;

    * )

        echo "Please choose one of the listed options."
        ;;

esac

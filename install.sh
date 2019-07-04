#!/bin/bash

sudo -i

apt install -y build-essential
apt install -y cmake
apt install -y ctags
apt install -y default-jdk
apt install -y git
apt install -y python3-dev

apt update -y
apt dist-upgrade -y

exit

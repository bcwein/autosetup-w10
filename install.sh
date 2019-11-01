#!/bin/bash
sudo apt-get install geogebra ipython python-numpy python-scipy python-matplotlib clang gcc \
remmina vim vlc

sudo apt install curl snapd

sudo snap install spotify
sudo snap install discord --classic
sudo snap install mailspring
sudo snap install deja-dup --classic

cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
bash Anaconda3-2019.10-Linux-x86_64.sh
source ~/.bashrc


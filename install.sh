#!/bin/bash
sudo apt-get install geogebra ipython python-numpy python-scipy python-matplotlib clang gcc \
remmina vim vlc gnome-maps gnome-tweaks git python3-gi python3-xlib powertop

sudo apt install curl snapd

sudo snap install spotify
sudo snap install discord --classic
sudo snap install mailspring
sudo snap install cawbird

cd /tmp
curl -O https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
bash Anaconda3-2019.10-Linux-x86_64.sh
source ~/.bashrc

sudo apt install libcurl4-openssl-dev git 
sudo apt install libsqlite3-dev
sudo snap install --classic dmd && sudo snap install --classic dub

git clone https://github.com/abraunegg/onedrive.git
cd onedrive
./configure
make
sudo make install

onedrive
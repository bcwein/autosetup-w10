#!/bin/bash
sudo pacman -S geogebra ipython python-numpy python-scipy python-matplotlib clang gcc code android-file-transfer \
gnome-calendar discord deja-dup virtualbox pulseeffects remmina vim curl sqlite dlang
pamac build google-chrome spotify mailspring anaconda cisco-anyconnect nordvpn-bin onedrive
pamac upgrade
sudo pacman -Syyuu
sudo pacman -Scc

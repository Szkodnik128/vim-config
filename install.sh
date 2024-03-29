#!/bin/bash

sudo apt-get remove -y vim vim-gnome vim-common

sudo apt-get update && sudo apt-get install -y vim-gnome-py2 ctags build-essential cmake python-dev python-pip

pip install --user powerline-status

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

mkdir -p ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/

mkdir -p ~/.config/fontconfig/conf.d
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

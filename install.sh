#!/bin/bash

sudo apt-get update && sudo apt-get install -y ctags build-essential cmake python-dev 

pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

mkdir -p ~/.fonts
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/

mkdir -p ~/.config/fontconfig/conf.d
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

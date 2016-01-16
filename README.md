Instalation
==========================================================

sudo apt-get update
sudo apt-get install ctags build-essential cmake python-dev

pip install --user powerline-status
pip install --user git+git://github.com/powerline/powerline

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

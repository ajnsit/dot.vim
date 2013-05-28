My VIM configuration
====================
This is my vim configuration, which is primarily geared towards haskell development but has some added support for other languages as well.

Organisation
----------------
1. The vimrc file is split into multiple files in the rc directory.
2. The plugins are managed using Vundle.


Quickstart
----------
1. Clone this git repository somewhere.
2. cd dot.vim
3. git submodule update --init
4. ln -s `pwd` ~/.vim
5. ln -s `pwd`/vimrc ~/.vimrc
6. mkdir -p ~/.fonts
7. ln -s `pwd`/vendor/ttf-dejavu-powerline ~/.fonts/ttf-dejavu-powerline
8. ln -s `pwd`/vendor/ubuntu-mono-powerline ~/.fonts/ubuntu-mono-powerline
9. gvim
10. In the gvim window, type ':BundleInstall' (without the quotes).
11. Wait for vundle to finish installing all plugins.
12. Done!



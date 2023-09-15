#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp -r .vimrc ~/.vimrc
cp -r .vim/* ~/.vim/
echo -e "\n\nPlease open vim & Run :PluginInstall to complete setup\n\n"

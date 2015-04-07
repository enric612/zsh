#!/bin/bash

echo "------------------------------------------------------------"
echo "Instalant zsh+oh-my-zsh+dependencies"
echo "------------------------------------------------------------"

sudo apt-get install zsh wget curl fortune cowsay tmux vim
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
bash install.sh

echo "Nom de usuari: "
read usuari

sed -i "s|/home/.*$|/home/$usuari/.oh-my-zsh|g" zshrc

echo "------------------------------------------------------------"
echo "Lincant .zshrc"
echo "------------------------------------------------------------"

mv ~/.zshrc ~/.zshrc-bk
ln -s $PWD/zshrc ~/.zshrc
source ~/.zshrc

#!/bin/bash

touch ~/.vimrc
echo "source ~/dotfiles/vimrc" > ~/.vimrc

touch ~/.zshrc
echo "source ~/dotfiles/zshrc" > ~/.zshrc

sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt install -y git htop exuberant-ctags nvim

mkdir -p ~/.config/nvim 
ln -s ~/.vimrc ~/.config/nvim/init.vim

sudo chsh -s $(which zsh)

zsh; VISUAL=editor; export VISUAL EDITOR=editor; export EDITOR; exit;

mkdir -p etc

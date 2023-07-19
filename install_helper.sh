#!/bin/bash
set -e
set -x

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install neovim
sudo apt-get update && sudo apt-get -q -y upgrade
sudo apt-get install tmux htop curl neovim python3-neovim

# install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

/usr/bin/nvim +PlugInstall +qall

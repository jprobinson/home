#!/bin/bash
set -e
set -x

# install neovim
curl -fLo /tmp/nvim.tar.gz https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -xzf /tmp/nvim.tar.gz
sudo cp -R nvim-linux-x86_64 /usr/local/nvim
sudo ln -s /usr/local/nvim/bin/nvim /usr/bin/nvim
rm -rf /tmp/nvim*

sudo apt-get update && sudo apt-get -q -y upgrade
sudo apt-get -q -y install tmux htop curl python3-neovim direnv silversearcher-ag

pip3 install neovim

#source ~/.zshrc

# reset the git insteadOf settings for Go
git config --global url."git@github.com:DataDog".insteadOf "https://github.com/DataDog"

echo "installing vim-plug"
sh -c "$(curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)"

sudo ln -s /usr/bin/python3 /usr/bin/python

echo "copying dot files"
cp -R ~/dotfiles/.config/nvim ~/.config/

cp ~/dotfiles/.zshrc ~/.zshrc

echo "configuring git"

git config --global user.name JP Robinson
git config --global user.email jp.robinson@datadoghq.com
git config --global pull.rebase true

echo "installing crane"

go install github.com/google/go-containerregistry/cmd/crane@latest

echo "docker helper"

ddtool docker install-helper

#!/bin/bash
set -e
set -x

# install neovim
sudo apt-get update && sudo apt-get -q -y upgrade
sudo apt-get -q -y install tmux htop curl neovim python3-neovim direnv silversearcher-ag

pip3 install neovim

# reset the git insteadOf settings for Go
git config --global url."git@github.com:DataDog".insteadOf "https://github.com/DataDog"

echo "installing vim-plug"
sh -c "$(curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)"

echo "copying dot files"
cp -R ~/dotfiles/.config/nvim ~/.config/nvim

cp ~/dotfiles/.zshrc ~/.zshrc

echo "configuring git"

git config --global user.name JP Robinson
git config --global user.email jp.robinson@datadoghq.com
git config --global pull.rebase true

echo "installing crane"

go install github.com/google/go-containerregistry/cmd/crane@latest

echo "docker helper"

sudo ddtool docker install-helper

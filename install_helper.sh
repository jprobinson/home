#!/bin/bash
set -e
set -x

# install neovim
sudo apt-get update && sudo apt-get -q -y upgrade
sudo apt-get -q -y install tmux htop curl neovim python3-neovim direnv

pip3 install neovim

# install vim-plug
sh -c "$(curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)"

# bring in the dot files
echo "copying dot files"
cp -R ~/dotfiles/.config/nvim ~/.config/nvim

cp ~/dotfiles/.zshrc ~/.zshrc

echo "initiating nvim"

nvim +PlugInstall +qall

nvim +UpdateRemotePlugins

echo "installing gocode for vim-go"

go install github.com/nsf/gocode@latest

echo "configuring git"

git config --global user.name JP Robinson
git config --global user.email jp.robinson@datadoghq.com
git config --global pull.rebase true

source ~/.zshrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

sudo ddtool docker install-helper

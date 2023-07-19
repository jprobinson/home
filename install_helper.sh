#!/bin/bash
set -e
set -x

# install neovim
sudo apt-get update && sudo apt-get -q -y upgrade
sudo apt-get -q -y install tmux htop curl neovim python3-neovim direnv

pip3 install neovim

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install vim-plug
sh -c "$(curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)"


# bring in the dot files
echo "copying dot files"
cp -R ~/home/.config/nvim ~/.config/nvim

cp ~/home/.zshrc ~/.zshrc

echo "initiating nvim"

nvim +PlugInstall +qall

echo "configuring git"

git config --global user.name JP Robinson
git config --global user.email jp.robinson@datadoghq.com

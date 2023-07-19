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

nvim +PlugInstall +qall

# bring in the dot files
mv ~/.config/nvim ~/.config-nvim.bak
mv ~/home/.config/nvim ~/.config/nvim

mv ~/.zshrc ~/.zshrc.bak
mv ~/home/.zshrc ~/.zshrc

mv ~/.gitconfig ~/.gitconfig.bak
mv ~/home/.gitconfig ~/.gitconfig

git config --global user.name JP Robinson
git config --global user.email jp.robinson@datadoghq.com

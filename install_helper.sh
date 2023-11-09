#!/bin/bash
set -e
set -x

# install neovim
sudo apt-get update && sudo apt-get -q -y upgrade
sudo apt-get -q -y install tmux htop curl neovim python3-neovim direnv

pip3 install neovim

echo "installing oh-my-zsh"
# force to https for the install, ssh isnt setup at this point
git config --global --unset-all url."git@github.com:".insteadOf
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
# reset the git insteadOf settings for Go
git config --global url."git@github.com:".insteadOf "https://github.com/"

echo "installing vim-plug"
sh -c "$(curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)"

echo "copying dot files"
cp -R ~/dotfiles/.config/nvim ~/.config/nvim

cp ~/dotfiles/.zshrc ~/.zshrc

echo "initiating nvim"

nvim +PlugInstall +qall

nvim +UpdateRemotePlugins +q

nvim +GoInstallBinaries +q

echo "installing gocode for vim-go"

go install github.com/nsf/gocode@latest

echo "configuring git"

git config --global user.name JP Robinson
git config --global user.email jp.robinson@datadoghq.com
git config --global pull.rebase true

sudo ddtool docker install-helper

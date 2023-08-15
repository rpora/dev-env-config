#!/bin/bash

# base
sudo apt update && sudo apt install -y curl wget unzip python3 pipx build-essential

# node.js and nmp via volta
curl https://get.volta.sh | bash
### export VOLTA_HOME=$HOME/.volta
export PATH=$VOLTA_HOME/bin:$PATH
volta install node

# rust
 curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# neovim
mkdir ./nvim && cd ./nvim
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo cp -rlf nvim-linux64 /usr/local/bin/nvim
sudo ln -sf /usr/local/bin/nvim/bin/nvim /usr/bin/nvim
cd ../ && rm -r ./nvim

## clone my custom config
rm -rf ~/.config/nvim  
git clone git@github.com:rpora/nvim-config.git ~/.config/nvim

### neovim package manager
rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim 
 git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

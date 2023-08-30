#!/bin/bash

sudo pacman -S neovim

## clone my custom config
rm -rf ~/.config/nvim  
git clone git@github.com:rpora/nvim-config.git ~/.config/nvim

### neovim package manager
rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim 
 git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim


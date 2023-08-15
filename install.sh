#!/bin/bash

# base
sudo apt update && sudo apt install -y curl wget unzip python3 pipx build-essential

# node.js and nmp via volta
curl https://get.volta.sh | bash
export VOLTA_HOME=$HOME/.volta
export PATH=$VOLTA_HOME/bin:$PATH
volta install node

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

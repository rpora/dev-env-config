#!/bin/bash

# base
sudo apt update && apt install -y curl wget unzip python3 pipx build-essentials

# node.js and nmp via volta
curl https://get.volta.sh | bash
volta install node

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

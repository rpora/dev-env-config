#!/bin/bash
apt update && apt install -y curl wget python3 pipx 
pipx ensurepath
pipx install --include-deps ansible

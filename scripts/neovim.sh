#!/bin/bash

# Clone the Repo
git clone https://github.com/neovim/neovim ~/neovim

cd ~/neovim && git checkout stable

make CMAKE_BUILD_TYPE=Release

sudo make install

cd ~/wsl_debian_config

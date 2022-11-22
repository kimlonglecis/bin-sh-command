#!/bin/bash


sudo apt-get update
sudo apt-get install -y tilix


mkdir -p ~/.config/tilix/schemes
wget -qO $HOME"/.config/tilix/schemes/spacegray.json" https://git.io/v7QV3
wget -qO $HOME"/.config/tilix/schemes/spacegray-eighties.json" https://git.io/v7QVB


# Set default terminal
sudo update-alternatives --config x-terminal-emulator

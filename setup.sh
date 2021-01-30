#!/bin/bash
cd $(dirname "${BASH_SOURCE[0]}")

full_path="$(realpath $0)"
cur_dir="$(dirname $full_path)"

sudo pacman -S --needed vim
ln -sf $cur_dir/.vimrc ~/.vimrc

mkdir -p ~/photos/wallpapers
ln -sf $cur_dir/backgrounds/hipsterPineNeedles.jpg ~/photos/wallpapers/hipsterPineNeedles.jpg
sudo pacman -S --needed feh
ln -sf $cur_dir/.fehbg ~/.fehbg

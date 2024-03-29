#!/bin/bash
cd $(dirname "${BASH_SOURCE[0]}")

full_path="$(realpath $0)"
cur_dir="$(dirname $full_path)"

#Setup Vim
sudo pacman -S --needed --noconfirm vim
ln -sf $cur_dir/.vimrc ~/.vimrc

#Set up wallpaper
mkdir -p ~/photos/wallpapers
#ln -sf $cur_dir/backgrounds/hipsterPineNeedles.jpg ~/photos/wallpapers/hipsterPineNeedles.jpg
sudo pacman -S --needed --noconfirm feh
feh --bg-fill $cur_dir/backgrounds/goatGlacier/2560x1440.jpg
#ln -sf $cur_dir/.fehbg ~/.fehbg

#Set up i3 and polybar
mkdir -p ~/.config
sudo pacman -S --needed --noconfirm i3-wm i3-gaps
sudo pacman -S --needed --noconfirm alacritty
sudo pacman -S --needed --noconfirm git

git config --global user.name "Max Ramsdell"
git config --global user.email madramsdell@gmail.com
git config --global core.editor vim

mkdir -p aur
cd aur
git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si --needed --noconfirm
cd ../..

ln -sf $cur_dir/i3 ~/.config/
ln -sf $cur_dir/polybar ~/.config/
ln -sf $cur_dir/alacritty ~/.config/


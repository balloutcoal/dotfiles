#!/bin/bash

#exit on error
set -e

#package list
packages=(
  git
  stow
  neovim
  mako
  hyprpaper
  hyprlock
  kitty
  rofi
  waybar
  udiskie
  ttf-firacode-nerd
  hyprshot
  grim
  texlive
  zathura
  zathura-pdf-mupdf
  python #pip install --user pynvim later

)

#updates before start
echo "Updating system files first"
sudo pacman -Syu --needed

echo "Installing pacman packages"
for pkg in "${packages[@]}"; do
  if ! pacman -Qi "$pkg" &>/dev/null; then
    echo "Installing $pkg"
    sudo pacman -S --noconfirm "$pkg"
  else
    echo "$pkg is already installed."
  fi
done

#!/bin/bash

#exit on error
set -e

#package list
packages=(
  git
  base-devel
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

read -p "Install yay and a browser? \n1) yes \n2) no" ifyay
if ((yay == 1))
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay
  makepkg -si --noconfirm
  cd -
fi

browsers=(
  floorp
  vivaldi
  google-chrome
  brave-bin
  palemoon
  firefox
)
i=1
echo "Browser Options: "
for browser in "${browsers[@]}"; do
  echo " $i) $browser"
  ((i++))
done

read -p "Enter your choice (1-$((i - 1))): " choice

if ((choice >= 1 && choice < i)); then
  yay -S "${browsers[choice - 1]}"
else
  echo "Invalid option, continuting"
fi



coal dotfiles:
.bashrc
.config
  kitty
  hypr
  nvim
  rofi
  rofi.coal
  fastfetch

PACKAGES NEEDED:
pacman: nvim, grim, fastfetch
yay:

yay broken install yourself https://aur.archlinux.org/yay.git i think

stow config, rm .bashrc and .config then mkdir .config and stow. that will not sym .config so any new unwanted configs aren't automatically added to the repo :)

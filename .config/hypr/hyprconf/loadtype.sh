#!/bin/bash
if [ -d /sys/class/power_supply/BAT0 ]; then
  cp ~/dotfiles/.config/hypr/hyprconf/laptop.conf ~/dotfiles/.config/hypr/hyprconf/primary.conf
else
  cp ~/dotfiles/.config/hypr/hyprconf/desktop.conf ~/dotfiles/.config/hypr/hyprconf/primary.conf
fi

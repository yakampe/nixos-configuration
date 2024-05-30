#!/usr/bin/env bash

rm -rf ~/.config/i3

# Create a symbolic link to the Home Manager config file
ln -s $(pwd)/i3-config/i3 ~/.config/i3

rm -rf ~/.config/polybar

ln -s $(pwd)/polybar ~/.config/polybar

rm -rf ~/.config/picom

ln -s $(pwd)/picom ~/.config/picom

rm -rf ~/.config/kitty

ln -s $(pwd)/kitty ~/.config/kitty

rm -rf ~/.config/flameshot

ln -s $(pwd)/flameshot ~/.config/flameshot
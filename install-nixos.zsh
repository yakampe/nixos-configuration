#!/usr/bin/env zsh

# Pick up your Nix config
# Remove the existing NixOS configuration file
sudo rm /etc/nixos/configuration.nix

# Create a symbolic link to the NixOS configuration file based on the hostname
sudo ln -s $(pwd)/nix-config/hosts/desktop/configuration.nix /etc/nixos/configuration.nix

sudo nixos-rebuild switch

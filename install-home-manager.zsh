#!/usr/bin/env zsh


# Install Home Manager
nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

# Remove the existing Home Manager config file
rm ~/.config/nixpkgs/home.nix

# Create a symbolic link to the Home Manager config file
ln -s $(pwd)/home-manager/home.nix ~/.config/nixpkgs/home.nix

home-manager switch

# Pick up your Nix config
# Remove the existing NixOS configuration file
sudo rm /etc/nixos/configuration.nix

# Create a symbolic link to the NixOS configuration file based on the hostname
sudo ln -s $(pwd)/nix-config/hosts/$HOST/configuration.nix /etc/nixos/configuration.nix

sudo nixos-rebuild switch
sudo 
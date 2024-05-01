#!/usr/bin/env zsh


# Install Home Manager
nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

# Remove the existing Home Manager config file
rm ~/.config/home-manager/home.nix

# Create a symbolic link to the Home Manager config file
ln -s $(pwd)/home-manager/home.nix ~/.config/home-manager/home.nix

home-manager switch

#!/usr/bin/env bash

# Prompt the user to choose between "laptop" or "desktop"
echo "Please choose your configuration:"
echo "1) Laptop"
echo "2) Desktop"
read -p "Enter the number for your choice: " choice

# Determine the host type based on user input
if [ "$choice" == "1" ]; then
    host_type="laptop"
elif [ "$choice" == "2" ]; then
    host_type="desktop"
else
    echo "Invalid choice. Please run the script again and choose either 1 or 2."
    exit 1
fi

# Pick up your Nix config
# Remove the existing NixOS configuration file
sudo rm /etc/nixos/configuration.nix

# Need to copy over the hardware config
cp /etc/nixos/hardware-configuration.nix $(pwd)/nix-config/hosts/$host_type/hardware-configuration.nix

# Create a symbolic link to the NixOS configuration file based on the chosen host type
sudo ln -s $(pwd)/nix-config/hosts/$host_type/configuration.nix /etc/nixos/configuration.nix

# Rebuild NixOS configuration
sudo nixos-rebuild switch

#!/usr/bin/env bash

rm ~/.config/i3/config

# Create a symbolic link to the Home Manager config file
ln -s $(pwd)/i3-config/i3/config ~/.config/i3/config
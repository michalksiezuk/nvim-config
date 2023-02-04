#!/usr/bin/env bash

NVIM_CONFIG_DIR=~/.config/nvim

echo "Customizing Neovim..."

# Check if previous configuration directory exists and make a backup
if [[ -d "$NVIM_CONFIG_DIR" ]]; then
    mv "$NVIM_CONFIG_DIR" "$NVIM_CONFIG_DIR.backup"
fi

# Check if we have an exisiting symlink and remove it
if [[ -L "$NVIM_CONFIG_DIR" ]]; then
    rm -f "$NVIM_CONFIG_DIR"
fi

# Link Neovim configuration repository
ln -s $(pwd) "$NVIM_CONFIG_DIR"

echo "Done. Enjoy!"


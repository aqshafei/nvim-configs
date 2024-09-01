#!/bin/bash
# Neovim Configs Installations

if [[ ! -v XDG_CONFIG_HOME ]]; then
    echo "XDG_CONFIG_HOME is not set. Please set XDG_CONFIG_HOME"
    exit 1;
fi

NVIM_DIR="$XDG_CONFIG_HOME/nvim"
if [ ! -d "$NVIM_DIR" ]; then
    echo "Creating nvim config directory at $NVIM_DIR"
    mkdir -p "$NVIM_DIR"
fi

cp "./init.lua" "$NVIM_DIR/"
cp -r "./lua" "$NVIM_DIR/"
cp -r "./plugin" "$NVIM_DIR/"
cp -r "./spell" "$NVIM_DIR"

echo "Installation complete."
exit 0

#!/usr/bin/env bash

NVIM_CONFIG_DIR="$HOME/.config/nvim"
NVIM_CONFIG_REPO="https://github.com/danilbushkov/nvim-config.git"

if [ ! -d "$NVIM_CONFIG_DIR" ]; then
    mkdir -p "$NVIM_CONFIG_DIR"
    git clone "$NVIM_CONFIG_REPO" "$NVIM_CONFIG_DIR"

    echo "Nvim configuration is installed"
else
    echo "Nvim configuration is already installed"
fi

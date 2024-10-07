#!/usr/bin/env bash

sudo nixos-rebuild switch --flake .
home-manager switch --flake .


NVIM_CONFIG_DIR="$HOME/.config/nvim"
NVIM_CONFIG_REPO="https://github.com/danilbushkov/nvim-config.git"

if [ ! -d "$NVIM_CONFIG_DIR" ]; then
	mkdir -p "$NVIM_CONFIG_DIR"
	git clone "$NVIM_CONFIG_REPO" "$NVIM_CONFIG_DIR"
fi

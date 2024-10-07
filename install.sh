#!/usr/bin/env bash

sudo nixos-rebuild switch --flake .
home-manager switch --flake .

./get_nvim_config.sh



#!/bin/sh

cp -f configuration.nix /etc/nixos/configuration.nix
cp -f flake.nix /etc/nixos/flake.nix
mkdir -p /etc/nixos/modules
cp -fr modules/* /etc/nixos/modules/
nixos-rebuild switch

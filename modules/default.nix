{ config, pkgs, ... }:

{
  imports = [
    ./alacritty.nix
    ./zsh.nix
    ./finder.nix
    ./tmux.nix
    ./starship.nix
    ./i3.nix
    ./misc.nix
  ];
}


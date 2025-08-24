{ config, pkgs, lib, ... }:

let
  baseDir = "/etc/nixos";
  dotsDir = "${baseDir}/dots";
in
{
  imports = [
    ../modules
  ];

  options = {
    user.enable = lib.mkEnableOption "Enable user module";
    user.username = lib.mkOption {
      type = lib.types.str;
      default = "user";
      description = "Username for Home Manager";
    };
  };

  config = lib.mkIf config.user.enable {
    home.username = config.user.username;
    home.homeDirectory = "/home/${config.user.username}";
    home.stateVersion = "25.05";

    home.packages = with pkgs; [
      xclip tree cmatrix btop fnm bat nitrogen chromium python3 gcc
      clang-tools rustup rofi polybar neovim vim wget alacritty curl
      fastfetch git vlc ripgrep tmux go
    ];

    editorconfig.enable = true;

    home.sessionVariables = {
      EDITOR = "neovim";
    };

    programs.home-manager.enable = true;
  };
}


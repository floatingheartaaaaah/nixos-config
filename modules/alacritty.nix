{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    theme = "gruvbox_dark";

    settings = {

      window = {
        padding = {
          x = 10;
          y = 10;
        };
        decorations = "Buttonless";
        dimensions = {
          lines = 500;
          columns = 500;
        };
      };

      font = {
        normal = {
          family = "CaskaydiaCove Nerd Font Mono";
        };
        size = 7;
      };

      keyboard = {
        bindings = [
          {
            key = "K";
            mods = "Control";
            chars = "\u000c";
          }
        ];
      };
    };
  };
}


{ config, pkgs, dotsDir, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  home.file."${config.home.homeDirectory}/.config/starship.toml" = {
    enable = true;
    source = "${dotsDir}/starship.toml"; 
  };
}


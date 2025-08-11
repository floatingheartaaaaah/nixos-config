{ config, pkgs, ... }:

let
  baseDir = "/etc/nixos";
  dotsDir = "${baseDir}/dots";
in
{ 
  #import the user configured applications
  imports = [
	./modules
  ];

  home.username = "hmmmaaah";
  home.homeDirectory = "/home/hmmmaaah";
  home.stateVersion = "25.05";

  home.packages = with pkgs ; [
        xclip
	tree
	cmatrix
	btop
	fnm
	bat
	nitrogen
	chromium
	rofi
	polybar
	spotify
  ];

  #editor config for editor all over the user editors
  editorconfig.enable = true ; 

  home.sessionVariables = {
    EDITOR = "neovim";
  };

  programs.home-manager.enable = true;
}
